#!/bin/bash
if [ $# -lt 1 ]; then
	echo "USAGE: $0 [namespace]"
	exit 1
fi

kubectl get namespace "$1" -o json \
  | tr -d "\n" | sed "s/\"finalizers\": \[[^]]\+\]/\"finalizers\": []/" \
  | kubectl replace --raw /api/v1/namespaces/$1/finalize -f -
