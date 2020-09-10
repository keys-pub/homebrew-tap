class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.15"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.1.15/keys_0.1.15_darwin_x86_64.tar.gz"
    sha256 "b5b0fba23cbe3e4eb65dff62bd96a8c9555ed21946fec9e844dad7eccf8a4fb6"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
