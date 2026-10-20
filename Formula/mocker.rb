class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.7/mocker-v0.9.7-arm64-apple-macosx.tar.gz"
  sha256 "9f735dc9fd61e668e9158fc082f3376d9adc07a0268bfbdd6c123abf47747a0d"
  license "MIT"
  version "0.9.7"

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
    assert_match "0.9.7", shell_output("#{bin}/mocker --version")
  end
end
