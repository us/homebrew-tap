class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.1.2/mocker-v0.1.2-arm64-apple-macosx.tar.gz"
  sha256 "dac015b4cc4036f2b2880ebc0893829e972a0ef498e18c7ff07e9eac4a6b8bf8"
  license "MIT"
  version "0.1.2"

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
    assert_match "0.1.2", shell_output("#{bin}/mocker --version")
  end
end
