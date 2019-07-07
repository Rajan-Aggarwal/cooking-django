#
# Cookbook:: cooking-django
# Recipe:: nginx
#
# Copyright:: 2019, The Authors, All Rights Reserved.

service 'nginx' do
  enabled true
  running true
  supports :status => true, :restart => true, :reload => true
  action [:start, :enabled]
end
