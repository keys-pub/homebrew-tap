# This file was generated by GoReleaser. DO NOT EDIT.
class Keys < Formula
  desc ""
  homepage "https://keys.pub"
  version "0.0.38"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/keys-pub/keysd/releases/download/v0.0.38/keys_0.0.38_darwin_x86_64.tar.gz"
    sha256 "c7ff9aa0622d9190181dbd96e5ee990adc88abc72eb87e0f70ebc8f47b909cdb"
  elsif OS.linux?
  end

  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
