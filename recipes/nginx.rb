#
# Cookbook:: cooking-django
# Recipe:: nginx
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# This recipe include the configuration for nginx
# server.

# source the config file
template '/etc/nginx/nginx.conf' do
  source 'nginx.conf'
  notifies :restart, 'service[nginx]', :immediately
end

# enable and restart the service upon running the chef-client
service 'nginx' do
  action [:restart, :enable]
end



