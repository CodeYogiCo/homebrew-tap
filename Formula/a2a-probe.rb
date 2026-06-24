class A2aProbe < Formula
  desc "Command-line client for the A2A (Agent-to-Agent) Protocol"
  homepage "https://github.com/CodeYogiCo/a2a-probe"
  license "MIT"
  version "0.3.0"

  on_macos do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-darwin-arm64"
    sha256 "6c5c7b6bff593471750a29db2fd485f6091e0df833c189db48df104d25b614d3"
  end

  on_linux do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v#{version}/a2a-probe-linux-amd64"
    sha256 "878015d321a913cf9c3c3f5023c8e080b13f0eaf3704e64f7cf9f33654865621"
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
