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

	
#install mysql
package name "mysql" do
	action :install
end

#start mysql on reboot
service "mysql" do
	action [:start, :enable]
end

#template

