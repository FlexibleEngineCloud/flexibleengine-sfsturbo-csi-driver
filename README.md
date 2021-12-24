# SFS-turbo CSI Driver for Kubernetes
SFS-turbo Container Storage Interface (CSI) Plugin `sfs-turbo.csi.huaweicloud.com`

### Prerequisite
 - The driver initialization depends on a [cloud config file](./deploy/cloud-config). Make sure it's in `/etc/sfs-turbo/cloud-config` on your node.

### Install SFS-turbo CSI driver

```
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfs-turbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/rbac-csi-SFS-turbo-controller.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfs-turbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/rbac-csi-SFS-turbo-node.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfs-turbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/csi-sfs-turbo-controller.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfs-turbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/csi-sfs-turbo-node.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfs-turbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/csi-sfs-turbo-driver.yaml
```

### Examples

```
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfs-turbo-csi-driver/master/examples/sfs-turbo-csi-plugin/kubernetes/sc.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfs-turbo-csi-driver/master/examples/sfs-turbo-csi-plugin/kubernetes/pvc.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfs-turbo-csi-driver/master/examples/sfs-turbo-csi-plugin/kubernetes/pod.yaml
```

### Links
 - [Kubernetes CSI Documentation](https://kubernetes-csi.github.io/docs/Home.html)
 - [CSI Drivers](https://github.com/kubernetes-csi/drivers)
 - [Container Storage Interface (CSI) Specification](https://github.com/container-storage-interface/spec)
