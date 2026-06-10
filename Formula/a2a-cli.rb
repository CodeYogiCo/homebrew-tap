class A2aCli < Formula
  desc "Command-line client for the A2A (Agent-to-Agent) Protocol"
  homepage "https://github.com/CodeYogiCo/a2a-probe"
  license "MIT"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-cli-darwin-arm64"
      sha256 "placeholder_updated_by_ci"
    else
      url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-cli-darwin-amd64"
      sha256 "placeholder_updated_by_ci"
    end
  end

  on_linux do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-cli-linux-amd64"
    sha256 "placeholder_updated_by_ci"
  end

  def install
    on_macos do
      if Hardware::CPU.arm?
        bin.install "a2a-cli-darwin-arm64" => "a2a-cli"
      else
        bin.install "a2a-cli-darwin-amd64" => "a2a-cli"
      end
    end
    on_linux do
      bin.install "a2a-cli-linux-amd64" => "a2a-cli"
    end
  end

  test do
    assert_match "a2a-cli", shell_output("#{bin}/a2a-cli --help 2>&1")
  end
end
