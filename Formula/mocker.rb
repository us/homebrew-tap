class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.3/mocker-v0.9.3-arm64-apple-macosx.tar.gz"
  sha256 "2b2094e0548cff2365c7fabde5551b343c0305a06921a829ad35f5455b340934"
  license "MIT"
  version "0.9.3"

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
    assert_match "0.9.3", shell_output("#{bin}/mocker --version")
  end
end
