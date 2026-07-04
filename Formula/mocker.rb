class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.7.1/mocker-v0.7.1-arm64-apple-macosx.tar.gz"
  sha256 "b2feafcdf18e10767d09d40af674947dc93bfc865ed15297e1a93a86477a41b7"
  license "MIT"
  version "0.7.1"

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
    assert_match "0.7.1", shell_output("#{bin}/mocker --version")
  end
end
