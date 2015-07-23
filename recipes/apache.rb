execute "update package index" do
  command "apt-get update"
  ignore_failure true
  action :nothing
end.run_action(:run)

%w{
apache2					
apache2-data
apache2-mpm-prefork			
apache2-utils				
apache2.2-bin				
python-httplib2				
python-mysqldb				
python-setuptools			
python-simplejson			
libmysqlclient-dev
}.each do |pkg|
  package pkg do
    action :install
    options "--no-install-recommends"
  end
end

python_pip "django" do
  version node["django"]["version"]
  action :install
end

%w{
django-extensions
MySQL-python
}.each do |ppkg|
    python_pip ppkg do
      action :install
    end
end

