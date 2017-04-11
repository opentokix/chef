user "Add a user" do 
    home user_home
    shell "/bin/bash"
    username "peter"
    manage_home true 
    password "!"
    gid 'users'
end

directory "Create ssh dir" do 
    owner "peter"
    group "users"
    mode "0700"
    path "/home/peter/.ssh"
end

file "Create pub key" do 
    owner "peter"
    group "users" 
    mode "0700" 
    path "/home/peter/.ssh/authorized_keys"
    content "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZn/cjD81zXVGFkVABhAJyLmeB+1XjuAp9ueIoRzg60OCnahU4CqzVgd7t3+9paBFlFlcCE28QDTyO5rEAMUyMDVn09hVEgkbmh4ls3Yhn2F+zXZMGrQJ8QPkTbQQnxoZ6rTEzAYCJGhWaTkLKrTt0deRbdpe/1lIStaOtzq7XV0oM9P8lRT+p87xCTUQHNCg7zFfCWMEFE00pGyYbO0pO4ytLKVW5BFICEJQJyc8Yw4VbdmtNmRuvzv2CkhTenlgCy9dYaGe2SsEtpngjicdgJt/gyiENcJzBeWbtWAR8v+0slifeROEqWWog6zHEClwx2vH9j8wVFtp4SDct3Inb peter@polyhedra"
end


