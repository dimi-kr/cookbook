#
# Cookbook Name:: basic
# Recipe:: default
# Author:: Dimetrio <kiddo.desu@gmail.com>
#

include_recipe "python::default"

python_pip "setuptools" do
  action :upgrade
end

python_pip "celery" do
  action :install
end

# create new user
user "ifunny" do
  username "ifunny"
end

