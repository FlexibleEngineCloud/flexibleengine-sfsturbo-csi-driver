# Copyright 2019 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

GO111MODULE=on
GOPROXY=direct

.EXPORT_ALL_VARIABLES:

.PHONY: sfs-turbo
sfs-turbo:
	go build -o sfs-turbo-csi-plugin ./src/cmd/sfs-turbo-csi-plugin

.PHONY: sfs-turbo-image
sfs-turbo-image:sfs-turbo
	cp ./sfs-turbo-csi-plugin ./src/cmd/sfs-turbo-csi-plugin
	docker build src/cmd/sfs-turbo-csi-plugin -t registry.eu-west-0.prod-cloud-ocb.orange-business.com/dafurepo/sfsturbo-provisioner:v4

.PHONY: fmt
fmt:
	./hack/check-format.sh

.PHONY: lint
lint:
	./hack/check-golint.sh

.PHONY: vet
vet:
	./hack/check-govet.sh

.PHONY: test
test:
	./hack/check-unittest.sh
