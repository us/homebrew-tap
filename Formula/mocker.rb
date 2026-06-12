class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.3.2/mocker-v0.3.2-arm64-apple-macosx.tar.gz"
  sha256 "5fbe78050e64e5d44cdc04ba616d6d96bc9aa48832117542f32f1d78ec8f9b69"
  license "MIT"
  version "0.3.2"

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
    assert_match "0.3.2", shell_output("#{bin}/mocker --version")
  end
end
