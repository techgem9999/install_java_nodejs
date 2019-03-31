#
# Cookbook:: java
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


package 'httpd' do
  action :install
  timeout "60"
end

service 'httpd' do
  action [:start, :enable]
end

bash 'extract_module' do
  cwd '/opt/'
  user 'root'
  code <<-EOH
    yum install -y wget
    yum install -y java-1.8.0-openjdk-devel
    EOH
end

bash 'extract_module' do
  cwd '/opt/'
  user 'root'
  code <<-EOH
  yum install -y epel-release
  yum install -y nodejs
    EOH
end
