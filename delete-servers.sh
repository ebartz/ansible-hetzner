#!/bin/bash

for server in $(hcloud server list | awk '{print $2}' | grep -v NAME)
do
  hcloud server delete $server
done
