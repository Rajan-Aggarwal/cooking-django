#
# Cookbook:: cooking-django
# Recipe:: gunicorn
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# This recipe contains the configuration of gunicorn
# wsgi module for python. This shall interact (translate)
# the django-python language to nginx.

# source the config file
template '/etc/systemd/system/gunicorn.service' do
  source 'gunicorn.service'
  notifies :reload, 'service[gunicorn]', :immediately
end

# enable and start the service
service 'gunicorn' do
  action [:enable, :restart]
end
