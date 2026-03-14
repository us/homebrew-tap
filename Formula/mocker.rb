class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.1.9/mocker-v0.1.9-arm64-apple-macosx.tar.gz"
  sha256 "84827667a69021dd3732d3dcabc17e04fe015cdbfb5d479f538a28dfbfc0542d"
  license "MIT"
  version "0.1.9"

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
    assert_match "0.1.9", shell_output("#{bin}/mocker --version")
  end
end
