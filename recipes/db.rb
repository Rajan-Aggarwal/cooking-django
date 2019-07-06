#
# Cookbook:: cooking-django
# Recipe:: db
#
# Copyright:: 2019, The Authors, All Rights Reserved.

postgresql_server_conf 'PostgreSQL Config' do
    notifies :reload, 'service[postgresql]'
end

postgresql_database 'django-app' do
  owner 'vagrant'
end

postgresql_user 'vagrant' do
  password 'password'
end
