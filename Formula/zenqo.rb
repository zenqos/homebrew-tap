class Zenqo < Formula
  desc "CLI tool for the Zenqo web framework"
  homepage "https://github.com/zenqos/zenqo"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zenqos/zenqo/releases/download/v0.1.2/zenqo_darwin_arm64.tar.gz"
      sha256 "5c1b234ca5e84c1ae6db5e441e3f8057d2120f7c51e523cc9bfd4d27a18de343"
    end
    on_intel do
      url "https://github.com/zenqos/zenqo/releases/download/v0.1.2/zenqo_darwin_amd64.tar.gz"
      sha256 "28b34ad550c504ce647ee3f58b0f67fd42d2a33b0785c3f3ce150dd9baa9760d"
    end
  end

  def install
    bin.install "zenqo"
  end

  test do
    system "#{bin}/zenqo", "--help"
  end
end
