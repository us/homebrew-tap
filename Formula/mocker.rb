class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.8/mocker-v0.9.8-arm64-apple-macosx.tar.gz"
  sha256 "14e19a16cb20a5d8d5471e0032cc82a0e51a9fcee6e19ddf73946f869a199370"
  license "MIT"
  version "0.9.8"

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
    assert_match "0.9.8", shell_output("#{bin}/mocker --version")
  end
end
