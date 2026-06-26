class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.5.2/mocker-v0.5.2-arm64-apple-macosx.tar.gz"
  sha256 "660fddfd88c7018e088c622aa11ab87c8a9e12959b392cc5702712cac60399b0"
  license "MIT"
  version "0.5.2"

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
    assert_match "0.5.2", shell_output("#{bin}/mocker --version")
  end
end
