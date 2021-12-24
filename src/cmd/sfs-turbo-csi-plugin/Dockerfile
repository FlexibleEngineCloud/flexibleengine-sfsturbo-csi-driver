FROM centos:7.6.1810
LABEL maintainers="FLM"
LABEL description="Huawei Cloud sfs-turbo CSI Plugin compatible with Flexible Engine"

RUN yum -y install nfs-utils && yum -y install epel-release && yum -y install jq && yum clean all

COPY sfs-turbo-csi-plugin /sfs-turbo-csi-plugin

ENTRYPOINT ["/sfs-turbo-csi-plugin"]
