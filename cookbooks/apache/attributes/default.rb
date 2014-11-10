
#coppied from reciepe/default.rb and modified

case node["platform"]
when "ubuntu"

	default["pakage_name"] = "apache2"
	default["service_name"] = "apache2"
	default["documment_root"] = "/var/www"

when "centos"

	default["pakage_name"] = "httpd"
	default["service_name"] = "httpd"
	default["documment_root"] = "/var/www/html"

end