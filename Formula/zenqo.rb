class Zenqo < Formula
  desc "CLI tool for the Zenqo web framework"
  homepage "https://github.com/zenqos/zenqo"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/zenqos/zenqo/releases/download/v0.1.2/zenqo_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/zenqos/zenqo/releases/download/v0.1.2/zenqo_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "zenqo"
  end

  test do
    system "#{bin}/zenqo", "--help"
  end
end
