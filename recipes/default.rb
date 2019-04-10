#
# Cookbook:: client-config
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

node.default['chef_client']['interval'] = '600'
node.default['chef_client']['splay'] = '0'
node.default['chef_client']['log_file'] = 'client.log'
node.default['chef_client']['log_dir'] = '/var/log/chef'
node.default['chef_client']['cron']['minute'] = '*/10'
node.default['chef_client']['cron']['hour'] = '*'
node.default['chef_client']['cron']['weekday'] = '*'
node.default['chef_client']['task']['frequency'] = 'minute'
node.default['chef_client']['task']['frequency_modifier'] = '10'

if node['os'].include?('windows')
  include_recipe 'chef-client::task'
elsif
  include_recipe 'chef-client::cron'    
end
