require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)
require 'router'
require 'controller'
require 'gossip'
require 'view'
routeur = Router.new
routeur.perform