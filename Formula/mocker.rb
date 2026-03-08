class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.1.3/mocker-v0.1.3-arm64-apple-macosx.tar.gz"
  sha256 "ccb7673c8d7e08c1d8ac1036393f52e698452380fd14438cd93977a5281a9dd0"
  license "MIT"
  version "0.1.3"

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
    assert_match "0.1.3", shell_output("#{bin}/mocker --version")
  end
end
