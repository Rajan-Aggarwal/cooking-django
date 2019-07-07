#
# Cookbook:: cooking-django
# Recipe:: default
# Author:: rajan
# Copyright:: 2019, The Authors, All Rights Reserved.

# This is the index recipe
# includes all the functional recipes

include_recipe "cooking-django::install"
include_recipe "cooking-django::db"
include_recipe "cooking-django::gunicorn"
include_recipe "cooking-django::nginx"
