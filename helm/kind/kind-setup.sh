#!/bin/bash
if ! command -v kind &> /dev/null
then
	echo "could not find kind"
	exit 1
fi
if ! command -v helm &> /dev/null
then
	echo "could not find helm"
	exit 1
fi
if ! command -v kubectl &> /dev/null
then
	echo "could not find kubectl"
	exit 1
fi
if ! command -v docker &> /dev/null
then
	echo "could not find docker"
	exit 1
fi

kind create cluster --config=kind-setup-config.yaml
echo Installing ingress...
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml > /dev/null
