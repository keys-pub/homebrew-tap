# This file was generated by GoReleaser. DO NOT EDIT.
class Keys < Formula
  desc ""
  homepage "https://keys.pub"
  version "0.0.40"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/keys-pub/keysd/releases/download/v0.0.40/keys_0.0.40_darwin_x86_64.tar.gz"
    sha256 "2216520c3c56ffd69e236b2826379bc66334ba6beeba7ec055c942b6cd0ac16c"
  elsif OS.linux?
  end

  def install
    bin.install "keys"
    bin.install "keysd"
    bin.install "fido2.so"
  end
end
