class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.5.1/mocker-v0.5.1-arm64-apple-macosx.tar.gz"
  sha256 "ef0bac024d08fddf0a935854ee5db1a52a6a0d619e58fcf47a17036b71ca6ca8"
  license "MIT"
  version "0.5.1"

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
    assert_match "0.5.1", shell_output("#{bin}/mocker --version")
  end
end
