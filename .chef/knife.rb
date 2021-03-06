# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "chamila"
client_key               "#{current_dir}/chamila.pem"
validation_client_name   "surreytech-validator"
validation_key           "#{current_dir}/surreytech-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/surreytech"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

# EC2 access keys
knife[:aws_access_key_id]     = "<AKIAJMQVBAROLHU57GQQ>"
knife[:aws_secret_access_key] = "<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>"

