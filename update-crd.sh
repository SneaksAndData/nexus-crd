#!/usr/bin/env bash

if [[ -z "${CONTROLLER_GEN_BINARY}" ]]; then
  echo 'Path to controller-gen binary is not set'
  exit 1
else
  if [[ -z "${NEXUS_CORE_LOCATION}" ]]; then
      echo 'Path to nexus-core repository is not set'
      exit 1
  else
    $CONTROLLER_GEN_BINARY crd paths=$NEXUS_CORE_LOCATION/pkg/apis/... output:crd:dir=./.helm/templates output:stdout
  fi
fi
