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

yum_repository 'atrpms' do
  description "Fedora Core $releasever - $basearch - ATrpms"
  baseurl "http://dl.atrpms.net/el6.9-$basearch/atrpms/stable"
  action :create
  gpgkey 'http://ATrpms.net/RPM-GPG-KEY.atrpms'
  gpgcheck true
end


package "ffmpeg"