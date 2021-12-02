#!/bin/bash

NODES_ACCEPTED=0

# do this until all nodes are added
while [ "${NODES_ACCEPTED}" -lt \
$(( "${NODES_COUNT}" * 2 )) ]; do
  PENDING=""
  PENDING_COUNT=0

  # wait for at least one node to be pending
  while [ "${PENDING_COUNT}" -le 0 ]; do
    echo "wait for pending csr"
    PENDING=$(oc get csr | grep -i pending | cut -f 1 -d ' ')
    PENDING_COUNT=$(echo "$PENDING" | wc -w)
    sleep 10
  done

  # accept pending nodes, increase nodes_accepted counter
  echo "accepting ${PENDING_COUNT} csr"
  echo "${PENDING}" | xargs -n 1 oc adm certificate approve
  NODES_ACCEPTED=$((NODES_ACCEPTED + PENDING_COUNT))
  echo "accepted ${NODES_ACCEPTED} requests so far"
done
