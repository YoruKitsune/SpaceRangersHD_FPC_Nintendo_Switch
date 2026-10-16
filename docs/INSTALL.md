# Установка на Nintendo Switch

Нужна консоль с homebrew (Atmosphère) и **собственная лицензионная копия** Space Rangers HD: A War Apart.
Игровые файлы в релиз не входят.

## Структура на SD-карте

```
sd:/switch/SpaceRangersHD/Rangers.nro
sd:/switch/SpaceRangersHD/game/        <- содержимое папки игры целиком (CFG, DATA, Mods, ...)
sd:/switch/SpaceRangersHD/user/        <- создаётся игрой: сохранения и логи
```

Пути зашиты в `platform/switch/main.c` и не зависят от того, откуда запущен NRO.

1. Скачай `Rangers.nro` из [Releases](../../../releases) (сверь SHA256 из описания релиза).
2. Скопируй его в `switch/SpaceRangersHD/` на SD-карте.
3. Скопируй папку своей установленной игры (Steam: `steamapps/common/Space Rangers HD A War Apart`)
   в `switch/SpaceRangersHD/game/`.

## Запуск

Игре нужно много памяти, поэтому запускай homebrew в **application mode** (title takeover):
открой Album/любую игру, удерживая **R**, и запусти Homebrew Menu или Sphaira оттуда.
В applet mode (запуск через Album) памяти не хватит.

Иконка и название встроены в NRO, в hbmenu и Sphaira игра отображается как «Space Rangers HD».
Управление: [CONTROLS.md](CONTROLS.md). Если что-то не работает: [TROUBLESHOOTING.md](TROUBLESHOOTING.md).

## Эмуляторы

Для Ryujinx-совместимого эмулятора см. раздел Nintendo Switch в [BUILDING.md](../BUILDING.md)
(`tools/run.py --target=switch --emulator-root=... --game-dir=...`).
