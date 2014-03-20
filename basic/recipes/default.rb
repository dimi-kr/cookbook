#
# Cookbook Name:: basic
# Recipe:: default
# Author:: Dimetrio <kiddo.desu@gmail.com>
#

include_recipe "python::default"
include_recipe "python::package"
include_recipe "python::pip"

package "celery" do
  provider Chef::Provider::PythonPip
end
# create new user
user "ifunny" do
  username "ifunny"
end

