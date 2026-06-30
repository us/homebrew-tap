class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.6.0/mocker-v0.6.0-arm64-apple-macosx.tar.gz"
  sha256 "3c32b177e9691cc197e741b3494895196b879e0c0df06d5d4b84b3b072e497c5"
  license "MIT"
  version "0.6.0"

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
    assert_match "0.6.0", shell_output("#{bin}/mocker --version")
  end
end
