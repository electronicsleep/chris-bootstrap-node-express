#!/bin/bash
if nodejs -v ; then
  echo "OK: Found nodejs"
else
  echo "Looking for nodejs"
  shopt -s expand_aliases
  alias nodejs=$(which node)
fi
npm install
nodejs app.js
