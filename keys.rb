class Keys < Formula
  desc "Key management"
  homepage "https://keys.pub"
  version "0.1.7"
  bottle :unneeded
  
  if OS.mac?
    url "https://github.com/keys-pub/keys-ext/releases/download/v0.1.7/keys_0.1.7_darwin_x86_64.tar.gz"
    sha256 "1e30f2e859c5c8eddc314b632b8ba962f9b262ed08a350148e331728380c63d2"
  elsif OS.linux?
  end
  
  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
