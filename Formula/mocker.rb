class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.1.4/mocker-v0.1.4-arm64-apple-macosx.tar.gz"
  sha256 "caf0d9c9ae3c6bb5a1a342eea9b1295dd5713fbe4fb06e6837dc272b8b000042"
  license "MIT"
  version "0.1.4"

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
    assert_match "0.1.4", shell_output("#{bin}/mocker --version")
  end
end
