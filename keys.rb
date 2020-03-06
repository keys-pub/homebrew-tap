# This file was generated by GoReleaser. DO NOT EDIT.
class Keys < Formula
  desc ""
  homepage "https://keys.pub"
  version "0.0.19"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/keys-pub/keysd/releases/download/v0.0.19/keys_0.0.19_darwin_x86_64.tar.gz"
    sha256 "f340d46c18a783b86b2ac59da906fb03a4b9ee183e5dd109a33123c15c802880"
  elsif OS.linux?
  end

  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
