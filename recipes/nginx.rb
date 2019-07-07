#
# Cookbook:: cooking-django
# Recipe:: nginx
#
# Copyright:: 2019, The Authors, All Rights Reserved.

template '/etc/nginx/nginx.conf' do
  source 'nginx.conf'
  notifies :restart, 'service[nginx]', :immediately
end

service 'nginx' do
  action [:restart, :enable]
end



