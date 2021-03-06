name             'django'
maintainer       'Gary Leong'
maintainer_email 'gwleong@gmail.com'
license          'All rights reserved'
description      'Installs/Configures django'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "apache2"
depends "apt"
depends "git"
depends "vim"
depends "python"
depends "build-essential"
depends 'iptables', '= 1.1.0'
