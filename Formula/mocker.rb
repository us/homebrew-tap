class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.10/mocker-v0.9.10-arm64-apple-macosx.tar.gz"
  sha256 "7d1aba3fea60a638849321baed7ef2e6fe71e169e63cf88f008d7464191ece26"
  license "MIT"
  version "0.9.10"

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
    assert_match "0.9.10", shell_output("#{bin}/mocker --version")
  end
end
