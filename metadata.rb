name                'client-config'
description         'Configures Chef client'
long_description    'Configures Chef client'

maintainer          'Justinas B'
maintainer_email    'j.balkis@gmail.com'
issues_url          'https://github.com/justinas-b/chef-client-config/issues'
source_url          'https://github.com/justinas-b/chef-client-config'

license             'All Rights Reserved'
version             '0.1.0'

chef_version        '>= 13.0'
depends             'chef-client'

%w( amazon windows ).each do |os|
  supports os
end
