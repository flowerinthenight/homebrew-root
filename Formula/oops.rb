# This file was generated by GoReleaser. DO NOT EDIT.
class Oops < Formula
  desc "Kubernetes-native testing tool."
  homepage "https://github.com/flowerinthenight/oops"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/flowerinthenight/oops/releases/download/v0.3.1/oops_0.3.1_darwin_amd64.tar.gz"
    sha256 "ecdd84fa4b4531ca2bbd2e6c7cb708b3fa4ef70cafac19c808200d109b3e241e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/flowerinthenight/oops/releases/download/v0.3.1/oops_0.3.1_linux_amd64.tar.gz"
      sha256 "52860ff90054a5d789f988a238005f8203b6ee1611106c1c781a2a9a3775252d"
    end
  end

  def install
    bin.install "oops"
  end

  test do
    assert_match /Kubernetes-native testing tool/, shell_output("#{bin}/oops -h", 0)
  end
end
