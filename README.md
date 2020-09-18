# TI-Arm-Docker
Docker file with the TI Arm compiler and CMake, used to build for the CC3220SF LaunchPad.
This is specifically designed for use on the CC3220SF using the AWS FreeRTOS codebase.

## Usage
Use the image `joscraw/ti-arm-cmake`

## GitHub Actions
Below is a demo actions file to build an example AWS FreeRTOS project for the CC3220SF Launchpad

```yaml
name: build
on:
  push:
    branch: [master]
jobs:
  test:
    runs-on: ubuntu-latest
    container: joscraw/ti-arm-cmake
    steps:
      - uses: actions/checkout@v2
      - name: Build Project
        run: cmake -DVENDOR=ti -DBOARD=cc3220_launchpad -DCOMPILER=arm-ti -S . -B build && cd build && make -j4
      - name: Upload Binary Artifact
        uses: actions/upload-artifact@v2
        with:
            name: binary
            path: build/recap_firmware.out
```

## Author
Jos Craw <jos@joscraw.net>
