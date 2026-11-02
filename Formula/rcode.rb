class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.1/rcode-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "9a9f36ff5c007b59c117cc46a65bce059e0d79cdb3db95e3e2d0ac4a9e7dc163"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.1/rcode-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "49f7c413a43cab49563f3afb6203902e4bb08c961c947c03946a7e9474a498c3"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.1/rcode-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d5fe823b6f53241c0249bfac9a16a6bd6ed34fe4ff617886162e2ebef0c3ed6"
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
