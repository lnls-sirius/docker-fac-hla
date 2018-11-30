# docker-hla
Dockerfile with FAC High Level Applications

## Docker Installation
Instructions for installing Docker on Ubuntu can be found on this web site: https://docs.docker.com/install/linux/docker-ce/ubuntu/

## sirius-hla-docker script
This script can be used to launch the HLA windows.
When you issue it for the first time docker will pull the required image (lnlsfac/docker-hla).
The name of the application must be passed as an argument to the script.

The available applications are:
* as-ma-launcher
* as-ps-cycle
* as-ps-launcher
* as-ti-control
* bo-ap-chromcorr
* bo-ap-currlt
* bo-ap-ramp
* bo-ap-tunecorr
* bo-config-manager
* bo-ma-control
* si-ap-chromcorr
* si-ap-currlt
* si-ap-sofb
* si-ap-tunecorr
* si-config-manager
* si-ma-control
* si-ps-control
* tb-ap-control
* tb-ap-posang
* tb-ma-control
* ts-ap-control
* ts-ap-posang
* ts-ma-control

Note that some environment variables must be set correctly depending on the IOC that is serving the HLA application, more specifically:
* VACA_PREFIX
* EPICS_CA_AUTO_ADDR_LIST
* EPIC_CA_ADDR_LIST

It is useful to install 'sirius-hla-docker.sh' in the system. This can be accomplished
with `make install` or `make develop` run under the repository folder.
