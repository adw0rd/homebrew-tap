# Homebrew tap adw0rd

Готовые сборки [rcode](https://github.com/adw0rd/rcode) — терминального агента для разработки с GigaChat, Yandex AI Studio, OpenRouter и своим API.

Установка на macOS (Apple Silicon или Intel) и Linux x86_64 с glibc 2.35+:

```sh
brew install adw0rd/tap/rcode
```

Запустите `rcode` из папки проекта и подключите провайдера. Ключ и сессии сохраняются отдельно от бинарника.

Обновление:

```sh
brew update
brew upgrade adw0rd/tap/rcode
```

Формула загружает архив нужной платформы из GitHub Releases и проверяет SHA-256. Rust для установки не требуется.

[Руководство rcode](https://github.com/adw0rd/rcode#readme) · [Релизы](https://github.com/adw0rd/rcode/releases)
