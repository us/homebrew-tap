class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.1/mocker-v0.9.1-arm64-apple-macosx.tar.gz"
  sha256 "7e45ef3dc8a5195003f17a134d85a3ca06725aed0ce579888946a7f1244e700f"
  license "MIT"
  version "0.9.1"

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
    assert_match "0.9.1", shell_output("#{bin}/mocker --version")
  end
end
