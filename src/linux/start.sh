#!/usr/bin/env bash

echo "bash srv.sh" >> script.sh
./script.sh
# test that it works
echo "HELLO!" >/dev/tcp/127.0.0.1/4444
