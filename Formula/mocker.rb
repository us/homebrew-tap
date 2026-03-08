class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.1.6/mocker-v0.1.6-arm64-apple-macosx.tar.gz"
  sha256 "d6fab8ef224347efe5127add2bc5b529b8f73110dc59bfb78027d5dd35d636cf"
  license "MIT"
  version "0.1.6"

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
    assert_match "0.1.6", shell_output("#{bin}/mocker --version")
  end
end
