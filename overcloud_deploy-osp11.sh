#!/bin/bash -x

THT=/home/stack/templates/

time openstack overcloud deploy \
     --templates /usr/share/openstack-tripleo-heat-templates \
     -r ${THT}/templates/custom-roles-data.yaml \
     -e ${THT}/templates/00-env-common.yaml \
     -e ${THT}/templates/10-network-env.yaml \
     -e ${THT}/templates/11-hostname-map.yaml \
     -e ${THT}/templates/12-fixed-ips.yaml \
     -e ${THT}/templates/20-networker-role.yaml \
     -e ${THT}/templates/21-generic-role.yaml \
     -e ${THT}/templates/30-storage-env.yaml \
     -e ${THT}/templates/40-hiera-custom.yaml \
     -e ${THT}/templates/41-unversioned-notifications.yaml \
     -e ${THT}/templates/50-fernet-tokens.yaml

