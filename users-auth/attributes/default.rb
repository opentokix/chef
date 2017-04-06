#
# Cookbook Name:: users
# Attributes :: default
#
# Copyright 2013,  
#


# user specific properties

# default[:users][:add] = {
# 	"testuser" => {
# 		"password_hash" => "$1$Jox0H8kd$JTKPiEEKpBs3E9S0",
# 		"groups" => ["apache", "tomcat"],
# 		"ssh_keys" => ["ssh-rsa AAAAB3NzaC1yc2EAAAABIw"]
# 	}
# }

# Why uid ?
# ===> We set this userid only to make sure it will be able to access its home directory in shared servers

# How to get "password_hash"
# Get the hash manually if required through the command
# "openssl passwd -1 'theplaintextpassword' 
# (or) 
# use the utility "UsersHelper.get_passwd_hash('theplaintextpassword')""



# if user specific properties are not specified default ones are used

default[:users][:default][:uid] = 'default'
default[:users][:default][:password_hash] = "*"
default[:users][:default][:groups] = ["sudoers"]
default[:users][:default][:ssh_keys] = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZn/cjD81zXVGFkVABhAJyLmeB+1XjuAp9ueIoRzg60OCnahU4CqzVgd7t3+9paBFlFlcCE28QDTyO5rEAMUyMDVn09hVEgkbmh4ls3Yhn2F+zXZMGrQJ8QPkTbQQnxoZ6rTEzAYCJGhWaTkLKrTt0deRbdpe/1lIStaOtzq7XV0oM9P8lRT+p87xCTUQHNCg7zFfCWMEFE00pGyYbO0pO4ytLKVW5BFICEJQJyc8Yw4VbdmtNmRuvzv2CkhTenlgCy9dYaGe2SsEtpngjicdgJt/gyiENcJzBeWbtWAR8v+0slifeROEqWWog6zHEClwx2vH9j8wVFtp4SDct3Inb peter@polyhedra"]

default[:users][:add] = {
    "peter" => {}
}
default[:users][:add] = {
    "foo" => {}
}
default[:users][:add] = {
    "bar" => {}
}
default[:users][:add] = {
    "one" => {}
}
default[:users][:add] = {
    "baz" => {}
}
