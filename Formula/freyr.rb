# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Freyr < Formula
  desc "Companiion service to https://github.com/flowerinthenight/freya/."
  homepage "https://github.com/flowerinthenight/freyr"
  version "0.2.1"

  on_macos do
    url "https://github.com/flowerinthenight/freyr/releases/download/v0.2.1/freyr_0.2.1_darwin_amd64.tar.gz"
    sha256 "d7859b9ff851cd1b0cf6aa29904fed72e2c8afc92ce13ed204feef89071c35bd"

    def install
      bin.install "freyr"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Freyr
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flowerinthenight/freyr/releases/download/v0.2.1/freyr_0.2.1_linux_amd64.tar.gz"
        sha256 "0f0271bc04eeda7eb120c93a001cdd0791c8295955facdc7797c546a6435e7e1"

        def install
          bin.install "freyr"
        end
      end
    end
  end

  test do
    assert_match /Companiion service to https, shell_output("#{bin}/freyr -h", 0)
  end
end
