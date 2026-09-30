class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.4/mocker-v0.9.4-arm64-apple-macosx.tar.gz"
  sha256 "1c25a011caae260c9b3eb0b77361d74f192bb0b25778b74865b55174d5687043"
  license "MIT"
  version "0.9.4"

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
    assert_match "0.9.4", shell_output("#{bin}/mocker --version")
  end
end
