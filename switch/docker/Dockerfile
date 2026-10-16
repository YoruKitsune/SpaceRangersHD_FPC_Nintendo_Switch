# Build image for the Nintendo Switch target.
# BASE_IMAGE must provide devkitPro (devkitA64 + libnx, with `dkp-pacman`) and LLVM/Clang 19.
# See docs/BUILD.md.
ARG BASE_IMAGE=liberty-switch-dev
FROM ${BASE_IMAGE}
RUN apt-get update && apt-get install -y --no-install-recommends \
        fp-compiler make cmake ninja-build git python3 pkg-config ca-certificates && \
    rm -rf /var/lib/apt/lists/*
RUN dkp-pacman -Syu --noconfirm --needed switch-dev switch-cmake switch-sdl2 switch-mesa \
        switch-libogg switch-libvorbis switch-libjpeg-turbo switch-libpng switch-zlib
