# Homebrew tap adw0rd

Репозиторий формул и касков Homebrew (`adw0rd/tap`):

1. **[rcode](https://github.com/adw0rd/rcode)** — терминальный агент для разработки с GigaChat, Yandex AI Studio, OpenRouter, своим API и локальными моделями.
2. **[Поребрик](https://adw0rd.itch.io/porebrik)** (`porebrik`) — игра от третьего лица в открытом мире Санкт-Петербурга (macOS Universal Binary `arm64 + x86_64`).

## Установка `rcode`

На macOS (Apple Silicon или Intel) и Linux `x86_64` с `glibc 2.35+`:

```sh
brew install adw0rd/tap/rcode
```

Запустите `rcode` из папки проекта и подключите провайдера. Ключ и сессии сохраняются отдельно от бинарника.

Обновление:

```sh
brew update
brew upgrade adw0rd/tap/rcode
```

[Руководство rcode](https://github.com/adw0rd/rcode#readme) · [Релизы](https://github.com/adw0rd/rcode/releases)

## Установка игры «Поребрик» (macOS)

На macOS (Apple Silicon и Intel, Universal Binary):

```sh
brew install --cask adw0rd/tap/porebrik
```

Каск автоматически ставит `Поребрик.app` в `/Applications/Поребрик.app` и снимает карантин Gatekeeper (`com.apple.quarantine`).

Обновление:

```sh
brew update
brew upgrade --cask adw0rd/tap/porebrik
```

[Страница игры на itch.io](https://adw0rd.itch.io/porebrik)
