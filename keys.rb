class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.16"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.1.16/keys_0.1.16_darwin_x86_64.tar.gz"
    sha256 "e6e882272c9f3e8c6c431aa091e19c96ae8c7aed2bed63c8a37dda9ffa107110"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
