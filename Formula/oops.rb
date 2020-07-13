# This file was generated by GoReleaser. DO NOT EDIT.
class Oops < Formula
  desc "Kubernetes-native testing tool."
  homepage "https://github.com/flowerinthenight/oops"
  version "0.2.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/flowerinthenight/oops/releases/download/v0.2.3/oops_0.2.3_darwin_amd64.tar.gz"
    sha256 "3546aa22c8f545df57177d85cf4613ecb798e8de5b498a37e415d5ee70850743"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/flowerinthenight/oops/releases/download/v0.2.3/oops_0.2.3_linux_amd64.tar.gz"
      sha256 "65889c33cbe0fb74edc07c126b63f3ae4bcdb76c406f3eb90adc473d358257e4"
    end
  end

  def install
    bin.install "oops"
  end

  test do
    assert_match /Kubernetes-native testing tool/, shell_output("#{bin}/oops -h", 0)
  end
end