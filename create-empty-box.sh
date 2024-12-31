#!/bin/bash
set -eu

rm -rf empty-box
mkdir -p empty-box
cp empty-box.vmx empty-box
pushd empty-box
echo '{"provider":"vmware_desktop"}' > metadata.json
vmware-vdiskmanager -c -s 10GB -a ide -t 0 empty-box.vmdk
tar cvzf empty.box empty-box.vmx metadata.json empty-box.vmdk
vagrant box add empty-box empty.box --provider vmware_desktop --force

popd
rm -rf empty-box