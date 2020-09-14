class Libfido2 < Formula
    desc "Provides library functionality for FIDO U2F & FIDO 2.0, including USB"
    homepage "https://developers.yubico.com/libfido2/"
    url "https://github.com/keys-pub/libfido2/archive/1.5.0_hidosxfix.tar.gz"
    sha256 "a4e64c38c85ac368ec735afa0d654b0e1097e94e4b907e0396a9a2db0fa1890a"
    license "BSD-2-Clause"    
      
    depends_on "cmake" => :build
    depends_on "mandoc" => :build
    depends_on "pkg-config" => :build
    depends_on "libcbor"
    depends_on "openssl@1.1"

    def install
      mkdir "build" do
        system "cmake", "..", *std_cmake_args
        system "make"
        system "make", "man_symlink_html"
        system "make", "man_symlink"
        system "make", "install"
      end
    end
  
    test do
      (testpath/"test.c").write <<-EOF
      #include <stddef.h>
      #include <stdio.h>
      #include <fido.h>
      int main(void) {
        fido_init(FIDO_DEBUG);
        // Attempt to enumerate up to five FIDO/U2F devices. Five is an arbitrary number.
        size_t max_devices = 5;
        fido_dev_info_t *devlist;
        if ((devlist = fido_dev_info_new(max_devices)) == NULL)
          return 1;
        size_t found_devices = 0;
        int error;
        if ((error = fido_dev_info_manifest(devlist, max_devices, &found_devices)) == FIDO_OK)
          printf("FIDO/U2F devices found: %s\\n", found_devices ? "Some" : "None");
        fido_dev_info_free(&devlist, max_devices);
      }
      EOF
      system ENV.cc, "-std=c99", "test.c", "-I#{include}", "-I#{Formula["openssl@1.1"].include}", "-o", "test",
                     "-L#{lib}", "-lfido2"
      system "./test"
    end
  end