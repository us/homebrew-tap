class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/releases/download/v0.9.6/mocker-v0.9.6-arm64-apple-macosx.tar.gz"
  sha256 "3870abaf6f90b5754e09edba9607dbbe5e0c893d912f21c0bfb891f3b8e957ad"
  license "MIT"
  version "0.9.6"

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
    assert_match "0.9.6", shell_output("#{bin}/mocker --version")
  end
end
