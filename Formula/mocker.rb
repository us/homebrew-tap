class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.5.0/mocker-v0.5.0-arm64-apple-macosx.tar.gz"
  sha256 "db8b89a024ab4d4cd173f396c803531e820b32478b2532b1515cfbb160ab637f"
  license "MIT"
  version "0.5.0"

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
    assert_match "0.5.0", shell_output("#{bin}/mocker --version")
  end
end
