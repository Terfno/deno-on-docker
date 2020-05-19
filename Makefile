INAME:=terfno/deno
CNAME:=deno

V:=1.0.0

A:=-alpine3.11
U18:=-ubuntu18.04
U20:=-ubuntu20.04

build:
	@docker build -t "${INAME}" .

run:
	@docker run -it --rm --name=${CNAME} ${INAME}

a/build:
	@docker build -f "Dockerfile-alpine" -t "${INAME}:${V}${A}" .

a/run:
	@docker run -it --rm --name="${CNAME}${A}" ${INAME}:${V}{A} sh

u18/build:
	@docker build -t "${INAME}:${V}${U18}" .

u18/run:
	@docker run -it --rm --name="${CNAME}${U18}" ${INAME}:${V}${U18} bash

u20/build:
	@docker build -f "Dockerfile-ubuntu-20" -t "${INAME}:${V}${U20}" .

u20/run:
	@docker run -it --rm --name-"${CNAME}${u20}" ${INAME}:${V}${U20} bash