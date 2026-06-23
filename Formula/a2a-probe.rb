class A2aProbe < Formula
  desc "Command-line client for the A2A (Agent-to-Agent) Protocol"
  homepage "https://github.com/CodeYogiCo/a2a-probe"
  license "MIT"
  version "0.2.8"

  on_macos do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-darwin-arm64"
    sha256 "8565d05e92fc97ba4b29fb9cbb77a4007686d4c73d873dad374e574dff5c2f98"
  end

  on_linux do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-linux-amd64"
    sha256 "471084a93bef0f525581afbb7d42e8d5e15b3ca3f4c5b2b3c5041256089091b2"
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
