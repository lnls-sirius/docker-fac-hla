#!/bin/bash

if [ -z $1 ]; then
  echo 'Usage: sirius-hla-docker.sh AppName'
  echo 'Applications:'
  echo '  as-ma-launcher'
  echo '  as-ps-cycle'
  echo '  as-ps-launcher'
  echo '  as-ti-control'
  echo '  bo-ap-chromcorr'
  echo '  bo-ap-currlt'
  echo '  bo-ap-ramp'
  echo '  bo-ap-tunecorr'
  echo '  bo-config-manager'
  echo '  bo-ma-control'
  echo '  si-ap-chromcorr'
  echo '  si-ap-currlt'
  echo '  si-ap-sofb'
  echo '  si-ap-tunecorr'
  echo '  si-config-manager'
  echo '  si-ma-control'
  echo '  si-ps-control'
  echo '  tb-ap-control'
  echo '  tb-ap-posang'
  echo '  tb-ma-control'
  echo '  ts-ap-control'
  echo '  ts-ap-posang'
  echo '  ts-ma-control'
  exit 1
fi

# EPICS_CA_AUTO_ADDR_LIST=NO
# EPICS_CA_ADDR_LIST="10.0.21.255 10.0.38.22 10.0.38.38 10.0.38.39 10.0.38.40"

export HLA=sirius-hla-$1.py

echo "Running Docker - $HLA"
echo "VACA_PREFIX=$VACA_PREFIX"
echo "EPICS_CA_ADDR_LIST=$EPICS_CA_ADDR_LIST"
echo ""

docker run --network=host -it --rm -e DISPLAY=$DISPLAY -e VACA_PREFIX=$VACA_PREFIX -e EPICA_CA_AUTO_ADDR_LIST=$EPICS_CA_AUTO_ADDR_LIST -e EPICS_CA_ADDR_LIST="$EPICS_CA_ADDR_LIST" -v /tmp/.X11-unix:/tmp/.X11-unix lnlsfac/docker-hla /bin/bash -c $HLA

exit 0
