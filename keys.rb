class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.13"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.1.13/keys_0.1.13_darwin_x86_64.tar.gz"
    sha256 "bcbc58f2f4bd29515eadd7881a38bfffa1f28cae62e73a66eeadf3682ae53a5a"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
