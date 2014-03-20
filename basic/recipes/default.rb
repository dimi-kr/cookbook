#
# Cookbook Name:: basic
# Recipe:: default
# Author:: Dimetrio <kiddo.desu@gmail.com>
#

include_recipe "python::default"
include_recipe "yum"

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

yum_repository 'rpmfusion-free' do
  description "RPMFusion free Stable repo"
  baseurl "http://download1.rpmfusion.org/free/fedora/releases/16/Everything/x86_64/os/"
  action :create
end

yum_repository 'rpmfusion-nonfree' do
  description "RPMFusion nonfree Stable repo"
  baseurl "http://download1.rpmfusion.org/nonfree/fedora/releases/16/Everything/x86_64/os/"
  action :create
end