class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.6.1/mocker-v0.6.1-arm64-apple-macosx.tar.gz"
  sha256 "cf25c58c012e8caaa51716dca8c7cb2c1162a837dcbbfd0a550ff31ac90c60eb"
  license "MIT"
  version "0.6.1"

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
    assert_match "0.6.1", shell_output("#{bin}/mocker --version")
  end
end
