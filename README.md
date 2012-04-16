ChefGem
=======

This is a temporary compat cookbook that provides the chef_gem resource
to recipes on chef versions <= 0.10.8. The intended purpose is to allow
proper omnibus usage of embedded gem set until the 0.10.10 release is
officially provided.

Repository
----------

https://github.com/heavywater/chef-chef_gem

Configuration
-------------

To set what system gem is used for the gem_package resource, simply set:

* `node[:gem_binary] = '/usr/local/bin/gem'`

Notes
-----

This cookbook will be deprecated with the introduction of the chef gem resource
in the next chef release (0.10.10).
