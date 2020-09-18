FROM rikorose/gcc-cmake:latest

WORKDIR /

COPY . .

ENV PATH="/compiler/ti-cgt-arm_18.12.4.LTS/bin:${PATH}"