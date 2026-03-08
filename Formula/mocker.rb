class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.1.5/mocker-v0.1.5-arm64-apple-macosx.tar.gz"
  sha256 "d29ca934f6fdaa473ad63f42728f01a9cae2e679c9fad4ac66d87c5e6b9ad4cc"
  license "MIT"
  version "0.1.5"

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
    assert_match "0.1.5", shell_output("#{bin}/mocker --version")
  end
end
