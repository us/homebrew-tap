class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.0/mocker-v0.9.0-arm64-apple-macosx.tar.gz"
  sha256 "bc05b3f8806559420329a3d4ee3a1fbd7e591bbe98f4248178b23e3d7942c1bc"
  license "MIT"
  version "0.9.0"

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
    assert_match "0.9.0", shell_output("#{bin}/mocker --version")
  end
end
