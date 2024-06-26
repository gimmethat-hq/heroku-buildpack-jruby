# frozen_string_literal: true

Vagrant.configure('2') do |config|
  config.vm.box = 'bento/ubuntu-24.04'

  # Approximate a heroku 1x dyno: 4 processors, and 1024m of memory
  config.vm.provider 'virtualbox' do |v|
    v.customize ['modifyvm', :id,
                 '--memory', '1024',
                 '--cpus', '4']
  end

  config.vm.provision :shell, path: 'vagrant/provision.sh'
end
