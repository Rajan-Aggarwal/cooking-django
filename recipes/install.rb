#
# Cookbook:: cooking-django
# Recipe:: install
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'epel-release' do
  action :install
end

package 'python-pip' do
  action :install
  action :upgrade # for probable new installations
end

package 'python-devel' do
  action :install
  action :upgrade
end

postgresql_client_install 'PostgreSQL for Django App' do
  version '9.6'
end

postgresql_server_install 'Setup the server for the db' do
  password 'password'
  port 5433
end

package 'nginx' do
  action :install
  action :upgrade # patching for security
end

python_package 'Django' do
  action :install
  version '1.8'
end

python_package 'gunicorn' do
  action :install
  action :upgrade # patching for security
end

python_package 'virtualenv' do
  action :install
end

package 'python-psycopg2' do
  action :install
end

python_runtime '3' do
  get_pip_url 'https://github.com/pypa/get-pip/raw/f88ab195ecdf2f0001ed21443e247fb32265cabb/get-pip.py'
  pip_version '18.0'
end
