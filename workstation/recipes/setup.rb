package 'tree' do
	action :install
end
package 'git' do
	action :install
end
file '/etc/motd' do
	content "Property of .Amartinb.

HOSTNAME: #{node['hostname']}
IP: #{node['ipaddress']}
MEMORY: #{node['memory']['total']}
CPU: #{node['cpu']['0']['model_name']}
"

end
