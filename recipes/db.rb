#
# Cookbook:: cooking-django
# Recipe:: db
#
# Copyright:: 2019, The Authors, All Rights Reserved.

service 'postgresql-9.6' do
  action :start
end

template '/var/lib/pgsql/9.6/data/pg_hba.conf' do
  source 'pg_hba.conf'
  notifies :restart, 'service[postgresql-9.6]', :immediately
end

postgresql_user 'vagrant' do
  password 'password'
end

postgresql_database 'django-app' do
  locale 'en_GB.UTF-8'
  owner 'vagrant'
end

