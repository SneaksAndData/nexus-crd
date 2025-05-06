# Nexus CRD
This repository contains Custom Resource Definitions for Nexus, packed in a Helm Chart. This chart must be installed for Nexus deployment to work.

## Updating the CRD
CRDs are generated from [nexus-core](https://github.com/SneaksAndData/nexus-core). First, clone nexus-core and download [controller-gen](https://github.com/kubernetes-sigs/controller-tools/releases) >=0.17.*. When ready, run:
```shell
export NEXUS_CORE_LOCATION=<path to nexus-core>
export CONTROLLER_GEN_BINARY=<path to controller-gen binary>

chmod +x CONTROLLER_GEN_BINARY

./update-crd.sh
```

Once the script completes, create PR with corresponding changes.