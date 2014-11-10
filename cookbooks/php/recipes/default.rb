#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#install php
apt_repository "dotdeb" do
  uri "http://packages.dotdeb.org"
  distribution "squeeze"
  components ["all"]
  key "http://www.dotdeb.org/dotdeb.gpg"
end

