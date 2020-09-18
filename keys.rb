class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.18"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.1.18/keys_0.1.18_darwin_x86_64.tar.gz"
    sha256 "3d4bda9501f122064b3a3ae0cf3ff99fab7b17ee03859086a04a4eca61f62250"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
