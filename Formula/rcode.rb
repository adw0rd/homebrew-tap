class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.3/rcode-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "18146c725f0e30a30cfed31d3f232d8b8ac6ada950353f069cefbd27c00a998c"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.3/rcode-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "88a8205a74b77f8e7cd99e6a21fd433b758fee951124fdf9cee6a3e706f6d814"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.3/rcode-v0.9.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45acd19cd231593510884ad6047a04a33eaa80dce84dabc40e61db4300594c4a"
    end
  end

  def install
    bin.install "rcode"
  end

  test do
    assert_equal "rcode #{version}", shell_output("#{bin}/rcode --version").strip
    assert_match "Usage: rcode", shell_output("#{bin}/rcode --help")
  end
end
