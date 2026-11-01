class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.0/rcode-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "179562b77e1a7b66b32f1bb306a3ccd57f91953b2af80fa4b45f3c5c882397d6"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.0/rcode-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "3e3b4a95a91c81a515cebe41fa63d12563958e4169a8afaa83c6dc7453d2e1c4"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.0/rcode-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26786e61f7125e74614a3edffca8d444bcce25e0a68dc0e59f660eac57286b33"
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
