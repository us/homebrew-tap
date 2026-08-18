class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.2/mocker-v0.9.2-arm64-apple-macosx.tar.gz"
  sha256 "9f03571829a0f819b60704178f7a5b7006c477205176002f35707eb9b2aa14f0"
  license "MIT"
  version "0.9.2"

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
    assert_match "0.9.2", shell_output("#{bin}/mocker --version")
  end
end
