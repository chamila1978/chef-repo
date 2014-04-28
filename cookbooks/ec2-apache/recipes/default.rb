#
# Cookbook Name:: ec2-apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#the following is going to move into
# /ec2-apache/attribute/default.rb file

#package_name = "apache2"
#service_name = "apache2"
#document_root = "/var/www"

#if node["platform"] == "centos"
#	package_name  = "httpd"
#	service_name  = "httpd"
#	document_root = "/var/www/html"
#end

#the above is going to move into
# /ec2-apache/attribute/default.rb file
	
#install apache
package node["package_name"] do
	action :install
end

#start apache on reboot
service node["service_name"] do
	action [:start, :enable]
end

#create homepage
#cookbook_file "#{document_root}/index.html" do
#	source "index.html"
#	mode "0644"	
#end

template "#{node["document_root"]}/index.html" do
	source "index.html.erb"
	mode "0644"	
end

