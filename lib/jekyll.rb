$:.unshift File.dirname(__FILE__)     # For use/testing when no gem is installed

# rubygems
require 'rubygems'

# core
require 'fileutils'
require 'time'

# stdlib

# 3rd party
require 'liquid'
require 'redcloth'
require 'mongrel'

# internal requires
require 'jekyll/site'
require 'jekyll/convertible'
require 'jekyll/layout'
require 'jekyll/page'
require 'jekyll/post'
require 'jekyll/filters'
require 'jekyll/server'

module Jekyll
  VERSION = '0.1.0'
  
  def self.process(source, dest, start_server=false)
    Jekyll::Server.new.start(dest) if start_server
    Jekyll::Site.new(source, dest).process
  end
end