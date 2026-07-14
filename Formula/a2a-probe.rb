class A2aProbe < Formula
  desc "Command-line client for the A2A (Agent-to-Agent) Protocol"
  homepage "https://github.com/CodeYogiCo/a2a-probe"
  license "MIT"
  version "0.3.2"

  on_macos do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v0.3.2/a2a-probe-darwin-arm64"
    sha256 "a722cfca94ee0aa1c457acfa702caa622cfae70d6d37dbe417920e0b5d791645"
  end

  on_linux do
    url "https://github.com/CodeYogiCo/a2a-probe/releases/download/v0.3.2/a2a-probe-linux-amd64"
    sha256 "313226463570f1209b64cebc8946a016ff327bd24e294318ab4d88426e1147cd"
  end

  def install
    on_macos do
      bin.install "a2a-probe-darwin-arm64" => "a2a-probe"
    end
    on_linux do
      bin.install "a2a-probe-linux-amd64" => "a2a-probe"
    end
    # short alias so "a2a" works too
    bin.install_symlink bin/"a2a-probe" => "a2a"
  end

  test do
    assert_match "a2a-probe", shell_output("#{bin}/a2a-probe --help 2>&1")
    assert_match "a2a-probe", shell_output("#{bin}/a2a --help 2>&1")
  end
end
