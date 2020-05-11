# This file was generated by GoReleaser. DO NOT EDIT.
class Keys < Formula
  desc ""
  homepage "https://keys.pub"
  version "0.0.44"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/keys-pub/keysd/releases/download/v0.0.44/keys_0.0.44_darwin_x86_64.tar.gz"
    sha256 "444225a613a52ab520b0b85de8f5a269d3d9719c886737c2aa25f26dc9b5c341"
  elsif OS.linux?
  end

  def install
    bin.install "keys"
    bin.install "keysd"
  end
end
