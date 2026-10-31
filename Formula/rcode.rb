class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.7.0/rcode-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "08df7b0ed25a74983f20fb8ad2c119ab7e1576f4b3ae96884f3809a51dc9abda"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.7.0/rcode-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "610e976c56d0d73ecb3587e6ca467dbbec272127e26dd60b7f40a876fe588f25"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.7.0/rcode-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7043b3e6b72a80f8fa3fc35e08823e546fa421fd0ae42f32cca692d0349ed0d5"
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
