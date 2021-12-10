# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lsdy < Formula
  desc "DynamoDB query tool."
  homepage "https://github.com/flowerinthenight/lsdy"
  version "1.8.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flowerinthenight/lsdy/releases/download/v1.8.8/lsdy_1.8.8_darwin_amd64.tar.gz"
      sha256 "ae4d0f576a560a9f25931d273204725486465633613eb2ad3fc32dd84bdd3a4f"

      def install
        bin.install "lsdy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flowerinthenight/lsdy/releases/download/v1.8.8/lsdy_1.8.8_linux_amd64.tar.gz"
      sha256 "3cd0f34e445e0bba15b3770a5673d0f84bdbb12e5966c4c7f8105384cf9d35b7"

      def install
        bin.install "lsdy"
      end
    end
  end

  test do
    assert_match /DynamoDB query tool/, shell_output("#{bin}/lsdy -h", 0)
  end
end
