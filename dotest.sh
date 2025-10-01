#!/bin/bash

pidof snmpd || { echo "snmpd not running?"; exit 1; }

result=$(./onesixtyone -i test_hosts.txt)

if [[ "$result" == *"public"* ]]; then
   echo "OK"
   exit 0
fi

echo "FAIL"
exit 1
