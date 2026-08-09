class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.8.0/mocker-v0.8.0-arm64-apple-macosx.tar.gz"
  sha256 "40ee3afd264ab71b81942c0a4f3b01959ac48908a9eeaa4691471ecf185268ee"
  license "MIT"
  version "0.8.0"

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
    assert_match "0.8.0", shell_output("#{bin}/mocker --version")
  end
end
