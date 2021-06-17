#!/bin/bash
server_name=$(uname -a)
OS_type=$(uname)
Up_time=$(uptime | awk 'NR==1{print $3}')
ipaddress=$(ifconfif | awk 'NR==18{print $2}')

echo "s.no,server_name,OS_type,Up_time,ipaddress" >server-details.excel
echo "1,$(uname -a),$(uname),$(uptime | awk 'NR==1{print $3}'),$(ifconfif | awk 'NR==18{print $2}')" >>server-details.excel
