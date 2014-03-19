#
# Cookbook Name:: basic
# Recipe:: default
# Author:: Dimetrio <kiddo.desu@gmail.com>
#

# create new user
user_account "ifunny" do
  ssh_keys "TEST-KEY"
end

# add user to www-data group
group "www-data" do
  action :modify
  members "ifunny"
  append true
end