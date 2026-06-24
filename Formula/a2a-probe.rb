class A2aProbe < Formula
  desc "Command-line client for the A2A (Agent-to-Agent) Protocol"
  homepage "https://github.com/CodeYogiCo/a2a-probe"
  license "MIT"
  version "0.2.11"

  on_macos do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-darwin-arm64"
    sha256 "8f2d778d972c49005626e618c7039be8f399c4b81a2759638be7d45c6e3664bd"
  end

  on_linux do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-linux-amd64"
    sha256 "0dbb31aa95ff686c20ae4cc5dda371c5932ae3c5d632f04e1a18994c335b54a6"
  end

  def install
    on_macos do
      bin.install "a2a-probe-darwin-arm64" => "a2a-probe"
    end
    on_linux do
      bin.install "a2a-probe-linux-amd64" => "a2a-probe"
    end
    bin.install_symlink bin/"a2a-probe" => "a2a"
  end

  test do
    assert_match "a2a-probe", shell_output("#{bin}/a2a-probe --help 2>&1")
    assert_match "a2a-probe", shell_output("#{bin}/a2a --help 2>&1")
  end
end
