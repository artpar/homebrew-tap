class Tt < Formula
  desc "P2P terminal sharing with E2E encryption"
  homepage "https://github.com/artpar/terminal-tunnel"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/artpar/terminal-tunnel/releases/download/v1.5.2/tt_darwin_arm64.tar.gz"
      sha256 "48cd2777161da3c752825e98506ca384d625617b7517e5198cce5d522ffdc12c"
    end
    on_intel do
      url "https://github.com/artpar/terminal-tunnel/releases/download/v1.5.2/tt_darwin_x86_64.tar.gz"
      sha256 "ce700fe605e2beb4a0a239644c594ff1834e9526b99c0d7b680acb73c3abe0cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/artpar/terminal-tunnel/releases/download/v1.5.2/tt_linux_arm64.tar.gz"
      sha256 "ceee2e4d536cc4b3e546d276e63e0fff7c0053af0aec313af7760e10d7ef86b5"
    end
    on_intel do
      url "https://github.com/artpar/terminal-tunnel/releases/download/v1.5.2/tt_linux_x86_64.tar.gz"
      sha256 "edb0a11c6ccfb5e39bed8682e6c9d6c3c3e79b7b5322b63cf62ce4629e410026"
    end
  end

  def install
    bin.install "tt"
  end

  test do
    system "#{bin}/tt", "--version"
  end
end
