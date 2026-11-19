class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.12.0/rcode-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "5464827db6b62741a090e373ffbf2911100cdffa47c835a04b5bfb849eddca92"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.12.0/rcode-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "024b4ec4dd5fd52b5b450a564e3b36724d3e5b8501818d7419109f3b05441425"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.12.0/rcode-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3290879f876f00239fbb532a41fef7a3e9bdf91ed0348bea6eee6da3bc56af82"
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
