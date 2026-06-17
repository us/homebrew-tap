class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.4.0/mocker-v0.4.0-arm64-apple-macosx.tar.gz"
  sha256 "ed216b3d9ee2b242d111cd55d95500443aba0f5227f33ac9310831aafaaa241d"
  license "MIT"
  version "0.4.0"

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
    assert_match "0.4.0", shell_output("#{bin}/mocker --version")
  end
end
