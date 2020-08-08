class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.11"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.1.11/keys_0.1.11_darwin_x86_64.tar.gz"
    sha256 "47e35446b475ea11d1598b4123a13b78c728b0668a4dceca2c87b85acbdb89a6"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
