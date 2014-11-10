#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#install apache
package "httpd" do
	action :install
end



#start apache
#start at restart

service "httpd" do
	action [:start , :enable ]
end


#create home page

cookbook_file "/var/www/index.htm" do
	source "index.htm"
	mode "0644"
end
