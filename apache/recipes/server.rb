package 'httpd' do
	action :install
end
file '/var/www/html/index.html' do
	content '<h1>Hola mundo</h1><br>------------------'
end
service 'httpd' do
	action [ :enable, :start]
end
