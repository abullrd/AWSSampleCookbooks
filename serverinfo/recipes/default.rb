#
# Cookbook Name:: serverinfo
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

template '/etc/setup.txt' do
  owner     node['opsworks_java']['tomcat']['user']
  source    'setup.txt.erb'
end
