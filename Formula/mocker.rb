class Mocker < Formula
  desc "Docker-compatible container CLI built on Apple's Containerization framework"
  homepage "https://github.com/us/mocker"
  url "https://github.com/us/mocker/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e05eeddf46cac1c022a40d1b1ef57dee9438cdee7e67f46f6cb0cb6ecf7186cf"
  license "MIT"
  version "0.1.0"

  depends_on :macos
  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build",
           "-c", "release",
           "--disable-sandbox",
           "--product", "mocker"
    bin.install ".build/release/mocker"
  end

  def caveats
    <<~EOS
      Mocker requires Apple's container CLI to be installed:
        https://github.com/apple/container

      macOS 26+ and Apple Silicon are required.
    EOS
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/mocker --version")
  end
end
