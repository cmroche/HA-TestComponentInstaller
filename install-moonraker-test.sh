#!/bin/bash

if [ -d "moonraker" ]; then rm -Rf moonraker; fi
mkdir -p moonraker
mkdir -p moonraker/translations

pushd moonraker
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/__init__.py
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/binary_sensor.py
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/button.py
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/config_flow.py
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/connector.py
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/const.py
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/entity.py
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/manifest.json
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/sensor.py
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/strings.json

# Add version attribute
tmp=$(mktemp)
/usr/bin/jq '. += {"version": "2021.10.0"}' manifest.json > "$tmp"
/bin/mv "$tmp" manifest.json

pushd translations
wget https://raw.githubusercontent.com/cmroche/core/moonraker-test/homeassistant/components/moonraker/translations/en.json
popd
popd
