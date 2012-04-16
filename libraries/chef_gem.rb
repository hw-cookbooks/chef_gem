require 'chef/resource/gem_package'

class Chef::Resource::GemPackage
  def gem_binary(*args)
    node[:gem_binary] || 'gem'
  end
end

class Chef::Resource::ChefGem < Chef::Resource::GemPackage

  #  provides :chef_gem, :on_platforms => :all

  def initialize(name, run_context=nil)
    super
    @resource_name = :chef_gem
    @provider = Chef::Provider::Package::Rubygems
    after_created
  end

  def gem_binary(*args)
    node[:chef_gem_binary] || '/opt/opscode/embedded/bin/gem'
  end

  def after_created
    Array(@action).flatten.compact.each do |action|
      self.run_action(action)
    end
    Gem.clear_paths
  end
end
