class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.11.1/rcode-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "2af111155fc858b63ddc93f0a221bbe551e030f05370585cf9bbb91e0169bae9"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.11.1/rcode-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "13dd293dbb175b2743a28abb8651f00e2b1fad6340887d5b7771b0669eae397c"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.11.1/rcode-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0df3fdff3dd72fdebf563c8776150e3b04a58e939cfaadc7538d16b1d75e262b"
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
