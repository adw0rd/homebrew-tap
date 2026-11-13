class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.10.0/rcode-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "72412570c365d62104302f72b36323b65478d84f1d1e245b41042461b9c1e0d6"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.10.0/rcode-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "b77a08e356114e6caff751e6e9e7ff008b6c58d45f517ebd94ffd3b19369b59a"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.10.0/rcode-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b30267ed4dddfecf857e3cc909b437ba997b6406ae403776f1e644ceac838a0"
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
