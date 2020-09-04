class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.14"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.1.14/keys_0.1.14_darwin_x86_64.tar.gz"
    sha256 "dfb59190bab38d877a2fffb766aaf7c7df8535eebff94e4c6b89824f685874a4"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
