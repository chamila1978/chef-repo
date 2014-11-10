#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# chef-repo/Cookbook/apache/Recipe

#install apache

#pakage name and variables moved to attribute/default.rb

package node["pakage_name"] do
	action :install
end



#start apache
#start at restart

service  node["service_name"] do
	action [:start , :enable ]
end


#create home page

# cookbook_file "#{documment_root}/var/www/index.htm" do
# 	source "index.htm"
# 	mode "0644"
# end

template "#{ node["documment_root"]}/index.html" do
	source "index.html.erb"
	mode "0644"
end
