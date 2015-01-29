domain_name   = node[:domain_name]
deploy_path   = node[:apache2][:deploy_dir]
document_root = "#{deploy_path}/#{domain_name}"

[ deploy_path, deploy_path+"/"+domain_name ].each do |path|
    directory "#{path}" do
      mode 0775
      owner node[:django][:user]
      group node[:django][:group]
      recursive true
      action :create
    end
end

apache_site domain_name
