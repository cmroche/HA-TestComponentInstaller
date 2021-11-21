# HA-TestComponentInstaller
Install script for component feature testing.

Using ssh, goto /config/custom_components (or the correct location if not using a hassos install), run the following script to create the required folders and download the custom component.

## Gree Component Integration
### Test Release
`wget -O - https://raw.githubusercontent.com/cmroche/HA-GreeComponentInstaller/master/install-gree-test.sh | bash`

This component uses a configuration flow, from the integrations screen add **Gree** and it will search the network for your compatible devices.

## Moonraker Component Integration
### Test Release
`wget -O - https://raw.githubusercontent.com/cmroche/HA-GreeComponentInstaller/master/install-moonraker-test.sh | bash`

This component uses a configuration flow, from the integrations screen add **Gree** and it will search the network for your compatible devices.