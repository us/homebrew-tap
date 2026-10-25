class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.9/mocker-v0.9.9-arm64-apple-macosx.tar.gz"
  sha256 "a73d86e8f11c4c9053c7486e4717650e68ad87c6f89c2d04ef5fa3f583b5fef8"
  license "MIT"
  version "0.9.9"

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
    assert_match "0.9.9", shell_output("#{bin}/mocker --version")
  end
end
