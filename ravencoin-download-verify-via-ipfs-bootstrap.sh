#!/bin/bash
# quick script by push for ravencoinOS bootstrap download + confirmation
# Full asset chain
# using sha256sum
# https://bootstrap.ravenland.org/ravencoinOS-bootstrap.tar
# https://gateway.ravenland.org/ipfs/QmeXQbm16Hp7AJrzMqN1is8egRaLjq6hujtCE9b3MTCAg3
# RAVENCOIN ASSET: RAVENCOINOS/BOOTSTRAP

wget https://www.bootstrap.ravenland.org/ravencoinOS-boostrap.tar
verifystring=$(curl https://gateway.ravenland.org/ipfs/QmeXQbm16Hp7AJrzMqN1is8egRaLjq6hujtCE9b3MTCAg3)
downloadstring=$(sha256sum ravencoinOS-bootstrap.tar | awk '{print $1}');
#downloadstring="36209053c1b1761d9f9e6c5ac64f74d8ffe2bdc98364387cc2b4218b80a12037";
if [ "$verifystring" == "$downloadstring" ]
then
echo "RavencoinOS bootstrap safe";
else
echo "RavencoinOS bootstrap not safe";
fi
