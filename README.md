ChefGem
=======

This is a temporary compat cookbook that provides the chef_gem resource
to recipes on chef versions <= 0.10.8

Configuration
-------------

To set what system gem is used for the gem_package resource, simply set:

* `node[:gem_binary] = '/usr/local/bin/gem'`

Notes
-----

This cookbook will be deprecated with the introduction of the next chef release
