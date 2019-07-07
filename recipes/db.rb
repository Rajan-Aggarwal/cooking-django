#
# Cookbook:: cooking-django
# Recipe:: db
# Author:: rajan
# Copyright:: 2019, The Authors, All Rights Reserved.

# This file contains the configurations required
# for the database.
# We choose postgresql in our stack and use
# cookbook called postgresql.

# start the service
service 'postgresql-9.6' do
  action :start
end

# source the config file
template '/var/lib/pgsql/9.6/data/pg_hba.conf' do
  source 'pg_hba.conf'
  notifies :restart, 'service[postgresql-9.6]', :immediately
end

# create user
postgresql_user 'vagrant' do
  password 'password'
end

# create db and give privilege to the user
postgresql_database 'django-app' do
  locale 'en_GB.UTF-8'
  owner 'vagrant'
end

