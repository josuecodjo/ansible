#!/bin/bash
touch config
cat <<EOF > config
{{ kubeconfigfile }}
EOF
export KUBECONFIG=config
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.28.0/bin/linux/amd64/kubectl
chmod +x ./kubectl