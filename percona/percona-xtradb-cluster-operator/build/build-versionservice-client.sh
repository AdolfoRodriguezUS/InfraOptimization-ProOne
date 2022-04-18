#!/bin/sh

set -o errexit
set -o xtrace

if ! swagger version &>/dev/null; then
  go get github.com/go-swagger/go-swagger/cmd/swagger@v0.24.0
fi

rm -rf versionserviceclient

swagger generate client -f vendor/github.com/Percona-Lab/percona-version-service/api/version.swagger.yaml -c versionserviceclient -m versionserviceclient/models
