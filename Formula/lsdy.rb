# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lsdy < Formula
  desc "DynamoDB query tool."
  homepage "https://github.com/flowerinthenight/lsdy"
  version "1.8.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flowerinthenight/lsdy/releases/download/v1.8.3/lsdy_1.8.3_darwin_amd64.tar.gz"
      sha256 "b58d051c241d02913051e005d07fb90a21ab06a6b6ffda684aa117707cd4317f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flowerinthenight/lsdy/releases/download/v1.8.3/lsdy_1.8.3_linux_amd64.tar.gz"
      sha256 "e8b3465e7b415335c05d5ba4e1de77dfe30306870133bf006172c6fea2d068e3"
    end
  end

  def install
    bin.install "lsdy"
  end

  test do
    assert_match /DynamoDB query tool/, shell_output("#{bin}/lsdy -h", 0)
  end
end
