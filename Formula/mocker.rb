class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.7.0/mocker-v0.7.0-arm64-apple-macosx.tar.gz"
  sha256 "c166f055d8be21a0ce2d77fe898cb3947afffbcce9f1e578d84de4c8dd561325"
  license "MIT"
  version "0.7.0"

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
    assert_match "0.7.0", shell_output("#{bin}/mocker --version")
  end
end
