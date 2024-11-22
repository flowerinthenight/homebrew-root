# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hedged < Formula
  desc "A generic daemon based on https://flowerinthenight/hedge/."
  homepage "https://github.com/flowerinthenight/hedged"
  version "0.1.2"

  on_macos do
    url "https://github.com/flowerinthenight/hedged/releases/download/v0.1.2/hedged_0.1.2_darwin_amd64.tar.gz"
    sha256 "eeb1a7e81744565b18185884da1696c6e49b7d3f6961195af489340d59213dcd"

    def install
      bin.install "hedged"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Hedged
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/flowerinthenight/hedged/releases/download/v0.1.2/hedged_0.1.2_linux_amd64.tar.gz"
        sha256 "debcae9a411727e4a834ceaa816368efba7557a386a53eea2f0b66b77833600b"

        def install
          bin.install "hedged"
        end
      end
    end
  end

  test do
    assert_match /A generic daemon based on https, shell_output("#{bin}/hedged -h", 0)
  end
end