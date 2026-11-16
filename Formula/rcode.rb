class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.11.0/rcode-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "ee7027dcabd99c66bbb13a3108a956aa1538714b64444665a126c2b672cd43a0"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.11.0/rcode-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "3f0fef18c46eccd941d277f324fbbb51ec4d756bde8052872a3790018903067e"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.11.0/rcode-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d00a4b8fb024f274e140a0de08ada86eec8d8609e765117417d8a095a798d35"
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
