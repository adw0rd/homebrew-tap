class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.8.0/rcode-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "0a630e0ba0ecc249025425786fb9cbb83e2e64eb99234c11799700d84bc2162f"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.8.0/rcode-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "228f22390304ea4671dfdd1426cc1b9824ceffba1707306dad353b6fdfacad9e"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.8.0/rcode-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34548b46f6c581496d4d621e4b48f7527ef8adec917f7a963154e1cb37723bed"
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
