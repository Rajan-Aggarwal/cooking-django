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

# if apache httpd service is enabled
# disable it
if File.exists?('/usr/lib/systemd/system/httpd.service')
  service 'httpd' do
    action [:stop, :disable]
  end
end

# enable and restart the service upon running the chef-client
service 'nginx' do
  action [:restart, :enable]
end



