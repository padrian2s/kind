#! /bin/bash
cat <<EOF > ~/cluster.yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
networking:
  apiServerAddress: "192.168.0.92"
  apiServerPort: 6444
nodes:
  - role: control-plane
    image: kindest/node:v1.29.0
EOF

sudo sysctl fs.inotify.max_user_watches=1955360
sudo sysctl fs.inotify.max_user_instances=4280

kind create cluster --config ~/cluster.yaml
