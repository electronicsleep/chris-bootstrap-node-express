#!/bin/bash
if ! [ -x "$(nodejs -v)" ]; then
  echo 'Looking for nodejs' >&2
  shopt -s expand_aliases
  alias nodejs=$(which node)
fi
npm install
nodejs app.js
