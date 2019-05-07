require 'yaml'
require 'pry'
require "active_record"
require 'cell'
require 'cell/haml'

require './db/connection.rb'
require './db/schema.rb'

Dir[File.join(File.dirname(__FILE__), 'config', '**', '*.rb')].sort.each {|file| require file }
Dir[File.join(File.dirname(__FILE__), 'app/models', '**', '*.rb')].sort.each {|file| require file }
Dir[File.join(File.dirname(__FILE__), 'app/controllers', '**', '*.rb')].sort.each {|file| require file }
Dir[File.join(File.dirname(__FILE__), 'app/cells', '**', '*.rb')].sort.each {|file| require file }

run MarketPlace.router
