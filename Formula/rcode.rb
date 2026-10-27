class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio и OpenRouter"
  homepage "https://github.com/adw0rd/rcode"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.6.2/rcode-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "afe4087dd81cb5e2e8c74f4a6de820574b69714c7ef5398059133630b1cd0f79"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.6.2/rcode-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "0a6f943d0eaa49eae6c51063428042c875d37fb6b33cf2f163623810589defc7"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.6.2/rcode-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd178fb63bcd0e94edd6e26d7dec7f5e64a9b3d0918950a5c761e084c4e2722c"
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
