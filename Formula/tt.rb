class Tt < Formula
  desc "P2P terminal sharing with E2E encryption"
  homepage "https://github.com/artpar/terminal-tunnel"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/artpar/terminal-tunnel/releases/download/v1.4.1/tt-darwin-arm64.tar.gz"
      sha256 "7e1bab4e07ab0d38a6e846793a812fb557144bcf0eb18acc99f8368e240a9cdd"
    end
    on_intel do
      url "https://github.com/artpar/terminal-tunnel/releases/download/v1.4.1/tt-darwin-amd64.tar.gz"
      sha256 "1a7c99b084b50218d0bb57d58f8615238b95e140dd881fbedb59444dd735ab9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/artpar/terminal-tunnel/releases/download/v1.4.1/tt-linux-arm64.tar.gz"
      sha256 "d26e47c5aee205d6c83e905b63710e0007785ba239adc3ef3ee3eb885f924a91"
    end
    on_intel do
      url "https://github.com/artpar/terminal-tunnel/releases/download/v1.4.1/tt-linux-amd64.tar.gz"
      sha256 "4aca59fead5ac921b6415321a4730b96b4f652f6ad7c079b64340031702425be"
    end
  end

  def install
    bin.install "tt"
  end

  test do
    system "#{bin}/tt", "--version"
  end
end
