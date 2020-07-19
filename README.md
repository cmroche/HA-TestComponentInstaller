# HA-GreeComponentInstaller
Install script for gree custom component currently waiting for review from HomeAssistant for inclusion as an integration. [home-assistant/core#37498](https://github.com/home-assistant/core/pull/37498)

Using ssh, goto /config/custom_components (or the correct location if not using a hassos install), run the following script to create required folders and download the custome component.

`wget -O - https://raw.githubusercontent.com/cmroche/HA-GreeComponentInstaller/master/install.sh | bash`

This component uses a configuration flow, from the integrations scree add **Gree** and it will search the network for your compatible devices.

