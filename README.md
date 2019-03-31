Installed and configured CHEF_SERVER
step 1: 
yum install -y wget
https://packages.chef.io/files/stable/chef-server/12.19.31/el/7/chef-server-core-12.19.31-1.el7.x86_64.rpm
rpm -ivh chef-server-core-12.19.31-1.el7.x86_64.rpm

step 2: 
chef-server configuration
chef-server-ctl reconfigure
chef-server-ctl install chef-manage
chef-manage-ctl reconfigure

step 3:
created user and organization 
chef-server-ctl user-create chefadmin chef admin chef@gmail.com chefadmin --filename /opt/chefadmin.pem
chef-server-ctl org-create test "test pvt ltd" --association-user chefadmin --filename test-validator.pem
chef-server-ctl status

step 4:
Installed and configured development kit and chef-clients
https://packages.chef.io/files/stable/chefdk/3.8.14/el/7/chefdk-3.8.14-1.el7.x86_64.rpm
rpm -ivh chefdk-3.8.14-1.el7.x86_64.rpm
downloaded starter kit and SCP it to the workstation server and the required certificates
unzip the starter kit and create a new repo (chef generate repo <repo name> ) and place the kit in this location
fetch all the ssl certificates using Knife ssl fetch.
create a cookbook (knife cookbook create <cookbookname>). Inside default.rb wrote the code to install java and nodejs in all nodes
  
  

chef-client
https://packages.chef.io/files/stable/chef/14.11.21/el/7/chef-14.11.21-1.el7.x86_64.rpm
rpm -ivh chef-14.11.21-1.el7.x86_64.rpm








