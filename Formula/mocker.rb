class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.5/mocker-v0.9.5-arm64-apple-macosx.tar.gz"
  sha256 "8091faa8f5eacc9c26398d95c3ba713581dbcad9f3b775ea66850c6da19f4095"
  license "MIT"
  version "0.9.5"

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
    assert_match "0.9.5", shell_output("#{bin}/mocker --version")
  end
end
