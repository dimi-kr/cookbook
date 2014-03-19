#
# Cookbook Name:: basic
# Recipe:: default
# Author:: Dimetrio <kiddo.desu@gmail.com>
#

# create new user
user "ifunny" do
  username "ifunny"
end


# add user to www-data group
group "www-data" do
  action :modify
  members "ifunny"
  append true
end