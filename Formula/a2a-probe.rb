class A2aProbe < Formula
  desc "Command-line client for the A2A (Agent-to-Agent) Protocol"
  homepage "https://github.com/CodeYogiCo/a2a-probe"
  license "MIT"
  version "0.2.4"

  on_macos do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-darwin-arm64"
    sha256 "f5c0adf8d103c7bd81a7ad54717ce028ba74be24cfa633ed818d2d1a4cc2a402"
  end

  on_linux do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-linux-amd64"
    sha256 "0a8703e8d2353019111d996d4a4d9ee8f89e5daa76115671a88dad9618707342"
  end

  def install
    on_macos do
      bin.install "a2a-probe-darwin-arm64" => "a2a-probe"
    end
    on_linux do
      bin.install "a2a-probe-linux-amd64" => "a2a-probe"
    end
  end

  test do
    assert_match "a2a-probe", shell_output("#{bin}/a2a-probe --help 2>&1")
  end
end
