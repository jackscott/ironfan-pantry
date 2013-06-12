maintainer       "Dhruv Bansal"
maintainer_email "dhruv@infochimps.com"
license          "Apache 2.0"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))

description      "Installs/Configures Cube"

recipe           "cube::default", "Sets up Dashpot web application."

%w[silverware git nodejs dashpot].each do |cb|
  depends cb
end

%w[ debian ubuntu centos ].each do |os|
  supports os
end
