class Currier < Formula
  desc "Vim-modal TUI API client for developers and AI agents"
  homepage "https://github.com/artpar/currier"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/artpar/currier/releases/download/v0.1.2/currier_0.1.2_darwin_amd64.tar.gz"
      sha256 "21ae7e7ff37063e2beb39877ef24b241d32de0c933161b40ca334cfa2f6ac8e6"
    end
    on_arm do
      url "https://github.com/artpar/currier/releases/download/v0.1.2/currier_0.1.2_darwin_arm64.tar.gz"
      sha256 "039dd98f895e24cd27b5f8a2c4ba74fc93384d223dc113f6c1fefbb9786d66cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/artpar/currier/releases/download/v0.1.2/currier_0.1.2_linux_amd64.tar.gz"
      sha256 "5bd184d97cd03ac6d50b0d530421c7a033ea5714ce2a3b98daa1ef4ccb6571bf"
    end
    on_arm do
      url "https://github.com/artpar/currier/releases/download/v0.1.2/currier_0.1.2_linux_arm64.tar.gz"
      sha256 "38032bb4e854a1825cfbf818a3b25488255c128ffa68651e709974eab3238122"
    end
  end

  def install
    bin.install "currier"
  end

  test do
    system "#{bin}/currier", "--version"
  end
end
