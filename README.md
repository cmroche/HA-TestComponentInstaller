# HA-GreeComponentInstaller
Install script for gree custom component currently waiting for review from HomeAssistant for inclusion as an integration. https://github.com/home-assistant/core/pull/37498

Using ssh, goto /config/custom_components (or the correct location if not using a hassos install), run the following script to create required folders and download the custome component.

`wget -O - https://raw.githubusercontent.com/cmroche/HA-GreeComponentInstaller/master/install.sh | bash`

