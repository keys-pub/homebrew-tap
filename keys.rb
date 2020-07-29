class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.7"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/app/releases/download/v0.1.7/keys_0.1.7_darwin_x86_64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
