class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.20"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.1.20/keys_0.1.20_darwin_x86_64.tar.gz"
    sha256 "b562d33e1e34b4fd2a3b9a369127eb2426170a416c22e5b3039d445319a66ac8"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
