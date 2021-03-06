# SFS-turbo CSI Driver for Kubernetes
SFS-turbo Container Storage Interface (CSI) Plugin

### Prerequisite
 - The driver initialization depends on a [cloud config file](./deploy/cloud-config). Make sure it's in `/etc/sfs-turbo/cloud-config` on your node.

### Install SFS-turbo CSI driver

```
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfsturbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/csi-sfs-turbo-controller.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfsturbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/csi-sfs-turbo-driver.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfsturbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/csi-sfs-turbo-node.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfsturbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/rbac-csi-sfs-turbo-controller.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfsturbo-csi-driver/master/deploy/sfs-turbo-csi-plugin/kubernetes/rbac-csi-sfs-turbo-node.yaml
```

### Examples

```
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfsturbo-csi-driver/master/examples/sfs-turbo-csi-plugin/kubernetes/sc.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfsturbo-csi-driver/master/examples/sfs-turbo-csi-plugin/kubernetes/pvc.yaml
kubectl apply -f https://raw.githubusercontent.com/FlexibleEngineCloud/flexibleengine-sfsturbo-csi-driver/master/examples/sfs-turbo-csi-plugin/kubernetes/pod.yaml
```

#### Note
When creating pod, it takes a while because a sfs turbo instance will be created dedicated inside of your cluter's vpc.


### Links
 - [Kubernetes CSI Documentation](https://kubernetes-csi.github.io/docs/Home.html)
 - [CSI Drivers](https://github.com/kubernetes-csi/drivers)
 - [Container Storage Interface (CSI) Specification](https://github.com/container-storage-interface/spec)
