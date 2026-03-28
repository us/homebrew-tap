class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.2.0/mocker-v0.2.0-arm64-apple-macosx.tar.gz"
  sha256 "f8c6f549cd5629e8fe53ff98687c8f59e334b33d6d00af1a01ed0f731df2a5f3"
  license "MIT"
  version "0.2.0"

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
    assert_match "0.2.0", shell_output("#{bin}/mocker --version")
  end
end
