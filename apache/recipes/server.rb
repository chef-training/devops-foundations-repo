#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

service 'httpd' do
  action [:start, :enable]
end
