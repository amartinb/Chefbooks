#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

all_web_nodes = search('node','role:web')

members = []

all_web_nodes.each do |web_node|
  member = {
     'hostmane' => web_node['cloud']['public_hostname'],
     'ipaddress' => web_node['cloud']['public_ipv4'],
     'port' => 80,
     'ssl_port' =>80
}
  members.push(member)
end

node.default['haproxy']['members'] = members

#node.default['haproxy']['members'] = [{
#     'hostname' => 'ec2-54-159-222-169.compute-1.amazonaws.com',
#     'ipaddress' => '54.159.222.169',
#     'port' => 80,
#     'ssl_port' => 4000
#     },{
#     'hostname' => 'ec2-54-166-117-81.compute-1.amazonaws.com',
#     'ipaddress' => '54.166.117.81',
#     'port' => 80,
#     'ssl_port' => 4000
#     }]
include_recipe 'haproxy::default'

