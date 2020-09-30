#!/bin/bash

ui=""

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -u|--ui) ui="true" ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

cd /workspace &&\
   make server &&\
   nohup bin/tidb-dashboard --debug --experimental --host 0.0.0.0 &

if [[ $ui = "true" ]]; then
   cd ui &&\
      yarn &&\
      yarn start
fi