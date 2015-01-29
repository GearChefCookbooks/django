name "apache_django"
description "apache_django"
default_attributes(
   :shared => {
        :config => {
            :nodes_file => "/opt/shared/configs/django.yml"
            }
        },
   :django => {
        :version => "1.4.8",
        :user => "root",
        :group => "root"
        },
   :apache2 => {
        :deploy_dir => "/var/www"
        }
)
