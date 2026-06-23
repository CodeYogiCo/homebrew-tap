class A2aProbe < Formula
  desc "Command-line client for the A2A (Agent-to-Agent) Protocol"
  homepage "https://github.com/CodeYogiCo/a2a-probe"
  license "MIT"
  version "0.2.2"

  on_macos do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-darwin-arm64"
    sha256 "e259ce5feba75b548a923df7c702488b8332dc644bd3523c3c691469c3564298"
  end

  on_linux do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-linux-amd64"
    sha256 "8dcb369c635b86d016bd197de85ec5a4d1fc1ac67ada0ffcba657fc014764e6c"
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
