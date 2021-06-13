#!/bin/bash

if [ -d "gree" ]; then rm -Rf gree; fi
mkdir -p gree
mkdir -p gree/translations

pushd gree
wget https://raw.githubusercontent.com/cmroche/core/gree/homeassistant/components/gree/__init__.py
wget https://raw.githubusercontent.com/cmroche/core/gree/homeassistant/components/gree/bridge.py
wget https://raw.githubusercontent.com/cmroche/core/gree/homeassistant/components/gree/climate.py
wget https://raw.githubusercontent.com/cmroche/core/gree/homeassistant/components/gree/config_flow.py
wget https://raw.githubusercontent.com/cmroche/core/gree/homeassistant/components/gree/const.py
wget https://raw.githubusercontent.com/cmroche/core/gree/homeassistant/components/gree/manifest.json
wget https://raw.githubusercontent.com/cmroche/core/gree/homeassistant/components/gree/strings.json

# Add version attribute
tmp=$(mktemp)
/usr/bin/jq '. += {"version": "2021.6.4"}' manifest.json > "$tmp" && mv "$tmp" manifest.json

pushd translations
wget https://raw.githubusercontent.com/cmroche/core/gree/homeassistant/components/gree/translations/en.json
popd
popd
