class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.5.3/mocker-v0.5.3-arm64-apple-macosx.tar.gz"
  sha256 "27c8f8d2d3c295dc280aacabbccb5dcad357f5598f5b4df2d50f28db9ebfda79"
  license "MIT"
  version "0.5.3"

  def install
    bin.install "mocker"
  end

  def caveats
    <<~EOS
      Mocker requires Apple's container CLI to be installed:
        https://github.com/apple/container

      macOS 26+ and Apple Silicon are required.
    EOS
  end

  test do
    assert_match "0.5.3", shell_output("#{bin}/mocker --version")
  end
end
