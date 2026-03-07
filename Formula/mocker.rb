class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.1.1/mocker-v0.1.1-arm64-apple-macosx.tar.gz"
  sha256 "3d4b991019b922ae24ecfddefe638efe2e5b4d55faa74bd4f93b3cf20aeeec69"
  license "MIT"
  version "0.1.1"

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
    assert_match "0.1.1", shell_output("#{bin}/mocker --version")
  end
end
