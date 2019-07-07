#
# Cookbook:: cooking-django
# Recipe:: db
#
# Copyright:: 2019, The Authors, All Rights Reserved.

service 'postgresql-9.6' do
  action :start
end

postgresql_server_conf 'PostgreSQL Config' do
  notifies :reload, 'service[postgresql-9.6]'
end

postgresql_user 'vagrant' do
  password 'password'
end

postgresql_database 'django-app' do
  locale 'en_GB.UTF-8'
  owner 'vagrant'
end

