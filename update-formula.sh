#!/bin/bash

export SHA256=$(curl -L https://github.com/wvlet/wvlet/releases/download/v${VERSION}/wvlet-cli-${VERSION}.tar.gz | sha256sum | awk '{ print $1 }')

envsubst < wvlet.rb.template
