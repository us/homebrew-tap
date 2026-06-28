class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.5.4/mocker-v0.5.4-arm64-apple-macosx.tar.gz"
  sha256 "edfa504db6960c05227d8a11182c0bb15c299d0616564e29fc8d24b51e56af28"
  license "MIT"
  version "0.5.4"

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
    assert_match "0.5.4", shell_output("#{bin}/mocker --version")
  end
end
