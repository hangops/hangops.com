#!/bin/bash
dir=$(dirname $0)
puppet apply --modulepath $dir/modules $dir/manifests/hangops.pp
