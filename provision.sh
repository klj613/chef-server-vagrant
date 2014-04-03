#!/usr/bin/env bash

echo "Beginning provisioning"

if (! rpm -qa | grep "chef-server-11.0.11-1.el6.x86_64") > /dev/null; then
    sudo rpm -ivh https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chef-server-11.0.11-1.el6.x86_64.rpm
    sudo chef-server-ctl reconfigure
fi

echo "Provisioning done"
