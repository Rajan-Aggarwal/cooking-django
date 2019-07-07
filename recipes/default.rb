#
# Cookbook:: cooking-django
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe "cooking-django::install"
include_recipe "cooking-django::db"
include_recipe "cooking-django::gunicorn"
include_recipe "cooking-django::nginx"
