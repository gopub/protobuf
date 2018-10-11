#!/usr/bin/env bash

DIR=$(dirname "$0")

protoc  -I ${DIR}/base/  ${DIR}/base/*.proto --go_out=plugins=grpc:${DIR}/
rm -r ${DIR}/base/*.go
mv ${DIR}/github.com/gopub/protobuf/base/*.go ${DIR}/base/
rm -r ${DIR}/github.com

