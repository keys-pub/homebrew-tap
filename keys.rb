class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.19"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.1.19/keys_0.1.19_darwin_x86_64.tar.gz"
    sha256 "dd7b35a018efb68b35bc3ce82b732addfbd23847340fd7d28ce0090dd758ac87"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
