# Сборка для Nintendo Switch

Подробности по всем платформам: [BUILDING.md](../BUILDING.md). Ниже, как собирали этот порт.

## Требования

- devkitPro: devkitA64 + libnx и пакеты `switch-dev switch-cmake switch-sdl2 switch-mesa switch-libogg
  switch-libvorbis switch-libjpeg-turbo switch-libpng switch-zlib` (`dkp-pacman`).
- LLVM/Clang 19, Free Pascal (`fp-compiler`) для bootstrap, `make cmake ninja-build git python3 pkg-config`.
- Git-подмодули (`vendor/fpc`, `vendor/okgf`).

## Сборка в Docker

`switch/docker/Dockerfile` расширяет базовый образ, в котором уже есть devkitPro и Clang 19
(`BASE_IMAGE`, по умолчанию локальный `liberty-switch-dev`; свой образ укажи аргументом):

```sh
git clone --recurse-submodules <url форка>
cd SpaceRangersHD_FPC_Nintendo_Switch
switch/docker/build.sh [базовый-образ]
```

Результат: `.local/switch-aarch64/release/bin/Rangers.nro` (рядом `Rangers.elf` и `Rangers.map` для разбора
крэшей; храни их вместе с NRO). Первая сборка компилятора занимает несколько минут.

## Сборка без Docker

На macOS/Linux с установленным devkitPro (`DEVKITPRO=/opt/devkitpro`):

```sh
git submodule update --init --recursive
python3 tools/build.py --target=switch --release
```

Иконка NRO — `platform/switch/icon.jpg` (передаётся в `elf2nro --icon` из `tools/switch.py`).
