#
# Cookbook Name:: basic
# Recipe:: default
# Author:: Dimetrio <kiddo.desu@gmail.com>
#


include_recipe 'php'
# create new user
user "ifunny" do
  username "ifunny"
end


php_fpm 'test' do
  action :add
  user 'ifunny'
  group 'ifunny'
  socket true
  socket_path '/tmp/phpmyadmin.sock'
  socket_perms "0666"
  start_servers 2
  min_spare_servers 2
  max_spare_servers 8
  max_children 8
end