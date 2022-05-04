asdf_user_install 'vagrant'

asdf_plugin 'nodejs'
asdf_package 'nodejs' do
  version '16.13.2'
  action [:install]
end
