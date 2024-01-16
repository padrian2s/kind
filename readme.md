
For Kubeflow 1.7
```
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
networking:
  apiServerAddress: "192.168.0.223"
  apiServerPort: 6444
nodes:
- role: control-plane
  image: kindest/node:v1.25.11
- role: worker
  image: kindest/node:v1.25.11
```

