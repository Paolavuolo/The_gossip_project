
require 'bundler'
Bundler.require
require 'pry'

require_relative 'lib/routeur'
require_relative 'lib/controller'
require_relative 'lib/gossip'
require_relative 'lib/view'

Routeur.new.perform 