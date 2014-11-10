#roles/webserver.rb
name "Webserver"
description "Web Server"
run_list "recipe[apache]"
default_attributes({
	"company" => "Chamila LTD"

	})