class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.2.4"
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.2.4/keys_0.2.4_darwin_x86_64.tar.gz"
    sha256 "2eaafb97e99e08f57ceafb41c1c049bd13a7a6c6a280e01cf4d1bc65644036b5"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
