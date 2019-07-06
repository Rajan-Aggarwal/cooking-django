#
# Cookbook:: cooking-django
# Recipe:: install
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'python-pip' do
  action :install
end

package 'python-devel' do
  action :install
end

postgresql_client_install 'PostgreSQL for Django App' do
  version '9.5'
end

package 'nginx' do
  action :install
  action :upgrade # patching for security
end



