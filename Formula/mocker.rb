class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.7.2/mocker-v0.7.2-arm64-apple-macosx.tar.gz"
  sha256 "5c017b594bd1daff7ed809bd427679dc1162e0a302add628a59878a6374804c5"
  license "MIT"
  version "0.7.2"

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
    assert_match "0.7.2", shell_output("#{bin}/mocker --version")
  end
end
