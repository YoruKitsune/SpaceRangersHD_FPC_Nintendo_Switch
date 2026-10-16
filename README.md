# Space Rangers HD — Nintendo Switch

Неофициальный homebrew-порт **Space Rangers HD: A War Apart** («Космические рейнджеры HD») на Nintendo Switch.
Это форк [pakompom/SpaceRangersHD_FPC](https://github.com/pakompom/SpaceRangersHD_FPC) (порт на Free Pascal)
с доработками для консоли. Проект не связан с разработчиками и издателем игры. **Игровые файлы не распространяются**,
нужна собственная лицензионная копия.

## Благодарности

- **pakompom**: автор порта на Free Pascal ([SpaceRangersHD_FPC](https://github.com/pakompom/SpaceRangersHD_FPC)) и реконструкции исходников
  ([SpaceRangersHD_decomp](https://github.com/pakompom/SpaceRangersHD_decomp)). Весь этот проект стоит на их работе, спасибо!
- Разработчики игры: SNK Games, Elemental Games, Katauri Interactive. Издатель: Fulqrum Publishing.
- KIaxons ([Utility-Functions-Pack](https://github.com/KIaxons/Utility-Functions-Pack)), авторы ExpAutoSearch,
  [giantplaceholder](https://github.com/giantplaceholder/spacerangershd-fpc-fixes), OKGF, SDL, Xiph, Xvid, Free Pascal,
  devkitPro/libnx. Полный список и лицензии: [NOTICE.md](NOTICE.md), [LICENSE](LICENSE).

## Что добавлено для Switch

- Иконка и NACP для hbmenu/Sphaira.
- Раскладка геймпада: панели игры на кнопках, второй слой по ZL, стики (курсор и камера), ПКМ на ZL+A.
- Навигация по меню D-pad (курсор прыгает на ближайшую кнопку), B закрывает окна.
- Стрельба основным оружием в аркадных боях на ZR.
- Диагностика в `user/stderr.log` (режим запуска, память, навигация).
- Docker-сборка: `switch/docker/`.

## Статус и ограничения

- Проверялось владельцем форка на консоли, но не всё; возможны вылеты (в том числе при запуске из Sphaira).
- AVI-ролики отключены; бои роботов не подключены (планетарные бои засчитываются как победа).
- Остальные платформы исходного проекта сохранены, см. [BUILDING.md](BUILDING.md).

## Документация

- [Установка](docs/INSTALL.md)
- [Сборка](docs/BUILD.md)
- [Управление](docs/CONTROLS.md)
- [Проблемы и логи](docs/TROUBLESHOOTING.md)

## English

Unofficial Nintendo Switch homebrew port of *Space Rangers HD: A War Apart*, a fork of
[pakompom/SpaceRangersHD_FPC](https://github.com/pakompom/SpaceRangersHD_FPC) with a Switch icon, gamepad layout, D-pad
menu navigation, B-to-close and an arcade fire button. Put `Rangers.nro` in `sdmc:/switch/SpaceRangersHD/` and your own
copy of the game in `sdmc:/switch/SpaceRangersHD/game/`; launch homebrew in application mode (title takeover).
See `docs/`. Game files are not included and not distributed. Thanks to pakompom for the FPC port and the reconstructed source.

---

## Upstream README (unchanged below)

# Space Rangers HD — Free Pascal Port

An experimental Free Pascal port of **Space Rangers HD: A War Apart**, based on the
recovered Delphi source and intended to preserve the original game behavior.

Supported platforms:

- Linux x86_64
- macOS ARM64
- Windows x86 / x86_64
- Android ARM64 (8.0+)
- iOS (15+; tested only in the simulator)
- WebAssembly (browser)
- Nintendo Switch homebrew (tested only in emulators)

See [BUILDING.md](BUILDING.md) for dependencies and build/run instructions.

[Download Linux x86_64, Windows x86_64 and Android ARM64 builds](https://github.com/pakompom/SpaceRangersHD_FPC/releases).
You need your own game data. Releases are built automatically from source changes on `main`.

## Known issues

- Some Android screens and controls look rough or out of place. The original UI
  uses fixed desktop layouts and bitmap artwork, and adapting them for smaller
  touchscreens is still in progress.
- The robot battle engine is not integrated yet; planetary battles automatically
  count as victories and grant the normal rewards.

## Logs

Find `rangers-fpc.log` here (the error dialog also shows its path):

- Windows: `%USERPROFILE%\Documents\SpaceRangersHD\` (paste into File Explorer's address bar).
  If Documents was moved, enter `shell:Personal` instead, then open `SpaceRangersHD`.
- macOS: `~/Library/Application Support/SpaceRangersHD/`.
- Linux: `$XDG_DATA_HOME/SpaceRangersHD/`, or `~/.local/share/SpaceRangersHD/`.

Attach this file when reporting a problem. Set `SR_LOG_LEVEL=debug` before launch
for more detail, or `warning` / `error` for less output (default: `info`).

## Layout

- `source/`: game source, organized by subsystem.
- `tools/`: build, run, compiler bootstrap, and formatting scripts.
- `platform/`: Pascal windowing, input, graphics, audio, and OS services.
- `platform/wasm/`: browser page and adapters to Emscripten's host runtime.
- `platform/android/`: Android launcher, SDL activity, resource import and native entry point.
- `platform/switch/`: libnx entry point and controller input for Switch homebrew.
- `native/`: OKGF and SDL build integration for desktop, Android and the browser.
- `vendor/okgf/`: pinned [OKGF](https://github.com/pakompom/okgf) submodule.
- `vendor/fpc/`: pinned [FPC fork](https://github.com/pakompom/fpc_sr) submodule.

## Documentation

- [Build setup](BUILDING.md)
- [Development gotchas](DEVELOPING.md)
- [Porting and behavior reference](CHANGES.md)
- [Attribution](NOTICE.md) and [license](LICENSE)
- [Personal branch with enhancements](https://github.com/pakompom/SpaceRangersHD_FPC/tree/personal)

Development uses LLMs such as GPT-6 Astra through Codex.

The port follows the recovered source from
[SpaceRangersHD_decomp at `cd488c5`](https://github.com/pakompom/SpaceRangersHD_decomp/tree/cd488c5be075beec9e97e54c2dd92a7ff8e5b1a7),
which reconstructs the **2026-10-06 prerelease** build. It retains the platform
adaptations and behavior corrections described in [CHANGES.md](CHANGES.md).
