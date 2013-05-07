#!/bin/bash

. load-config.sh

if [ "$DEVICE" = "mirror" ] ; then
    echo "Error: local mirror created with |./config.sh mirror| cannot be built"
    exit 1
fi

export USE_CCACHE=yes &&
export GECKO_PATH &&
export GAIA_PATH &&
export GAIA_DOMAIN &&
export GAIA_PORT &&
export GAIA_DEBUG &&
export GECKO_OBJDIR &&
export B2G_NOOPT &&
export B2G_DEBUG &&
export MOZ_CHROME_MULTILOCALE &&
export L10NBASEDIR &&
export MOZ_B2G_DSDS &&
. build/envsetup.sh &&
lunch $LUNCH
