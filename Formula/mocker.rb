class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.1.8/mocker-v0.1.8-arm64-apple-macosx.tar.gz"
  sha256 "5f6afd88034d9e8b97de0737b6550b512a2c7ad1f127ebfcc478ed6550078264"
  license "MIT"
  version "0.1.8"

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
    assert_match "0.1.8", shell_output("#{bin}/mocker --version")
  end
end
