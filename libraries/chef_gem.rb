require 'chef/resource/gem_package'

class Chef::Resource::GemPackage
  def gem_binary(*args)
    node[:gem_binary] || 'gem'
  end
end

class Chef::Resource::ChefGem < Chef::Resource::GemPackage
  def gem_binary(*args)
    node[:chef_gem_binary] || '/opt/opscode/embedded/bin/gem'
  end
end
