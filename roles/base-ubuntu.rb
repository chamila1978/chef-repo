#roles/base-ubuntu.rb

name "base-ubuntu"
description "Based role for ubuntu servers"
run_list "recipe[apt]"