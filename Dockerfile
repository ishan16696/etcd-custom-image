# SPDX-FileCopyrightText: 2020 SAP SE or an SAP affiliate company and Gardener contributors
# SPDX-License-Identifier: Apache-2.0

FROM gcr.io/etcd-development/etcd:v3.5.1

RUN apt update
RUN apt install -y bash curl wget

WORKDIR /
COPY etcd_bootstrap_script.sh /var/etcd/bin/bootstrap.sh
ENTRYPOINT ["/usr/local/bin/etcd"]
