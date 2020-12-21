class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.2.3"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.2.3/keys_0.2.3_darwin_x86_64.tar.gz"
    sha256 "34ad8fa72565fec95ca770bedce68f978bb45e42387f473d91b3675b594419b1"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
