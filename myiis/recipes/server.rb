#
# Cookbook:: myiis
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
	
powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
end

template 'c:\inetpub\wwwroot\Default.htm' do
  source 'Default.htm.erb'
end

service 'w3svc' do
  action [:start, :enable]
end
