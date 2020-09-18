FROM rikorose/gcc-cmake:latest

WORKDIR /

COPY . .

ENV PATH="/compiler:${PATH}"