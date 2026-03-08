class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.1.7/mocker-v0.1.7-arm64-apple-macosx.tar.gz"
  sha256 "19b46b94dcf73761754e6af2a35eda7fdb93f15a93a764160a94cbb88b049df8"
  license "MIT"
  version "0.1.7"

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
    assert_match "0.1.7", shell_output("#{bin}/mocker --version")
  end
end
