#!/usr/bin/env bash

DIR=$(dirname "$0")

protoc  -I ${DIR}/include/  ${DIR}/include/base.proto --go_out=plugins=grpc:${DIR}/
rm -r ${DIR}/base
mv ${DIR}/github.com/gopub/protobuf/base ${DIR}

