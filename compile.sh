#!/usr/bin/env bash

DIR=$(dirname "$0")

protoc  -I ${DIR}/  ${DIR}/base.proto --go_out=plugins=grpc:${DIR}/
rm -r ${DIR}/base
mv ${DIR}/github.com/gopub/protobuf/base ${DIR}/
rm -r ${DIR}/github.com

