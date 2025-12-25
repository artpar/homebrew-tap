class Currier < Formula
  desc "Vim-modal TUI API client for developers and AI agents"
  homepage "https://github.com/artpar/currier"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/artpar/currier/releases/download/v0.1.1/currier_0.1.1_darwin_amd64.tar.gz"
      sha256 "a07829a10c372f58b7319a96e734da412004467307fa2f424f5df4eb00b05690"
    end
    on_arm do
      url "https://github.com/artpar/currier/releases/download/v0.1.1/currier_0.1.1_darwin_arm64.tar.gz"
      sha256 "e86599d46be0b3f6a4716b3f882417c4c10dd50d347b957235a8c5d9793306b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/artpar/currier/releases/download/v0.1.1/currier_0.1.1_linux_amd64.tar.gz"
      sha256 "46043c30afac289baecded74cc34ad3c461e0bc2e0194dce1866a2ade845a283"
    end
    on_arm do
      url "https://github.com/artpar/currier/releases/download/v0.1.1/currier_0.1.1_linux_arm64.tar.gz"
      sha256 "1cd90ca5745c9829e57d71fbd4d966b1ac40f1356db030d5901f5aabce2938bd"
    end
  end

  def install
    bin.install "currier"
  end

  test do
    system "#{bin}/currier", "--version"
  end
end
