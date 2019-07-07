#
# Cookbook:: cooking-django
# Recipe:: gunicorn
#
# Copyright:: 2019, The Authors, All Rights Reserved.

template '/etc/systemd/system/gunicorn.service' do
  source 'gunicorn.service'
  notifies :reload, 'service[gunicorn]', :immediately
end

service 'gunicorn' do
  action [:enable, :restart]
end
