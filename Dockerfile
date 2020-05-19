FROM ubuntu:18.04

RUN apt update &&\
  apt install -y curl unzip &&\
  curl -fsSL https://deno.land/x/install/install.sh | sh

ENV DENO_INSTALL="/root/.deno"
ENV PATH="$DENO_INSTALL/bin:$PATH"

CMD bash
