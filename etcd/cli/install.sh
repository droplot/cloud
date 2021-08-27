#!/bin/bash

ETCD_VER="v$1"
ETCD_DIR=etcd-download
DOWNLOAD_URL=https://github.com/coreos/etcd/releases/download

# Download
mkdir ${ETCD_DIR}
cd ${ETCD_DIR}
wget ${DOWNLOAD_URL}/${ETCD_VER}/etcd-${ETCD_VER}-darwin-amd64.zip 
unzip etcd-${ETCD_VER}-darwin-amd64.zip

# install
cd etcd-${ETCD_VER}-darwin-amd64
ls
# cp etcdctl /usr/local/bin/
# rm -rf ${ETCD_DIR}
