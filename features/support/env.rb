require 'cucumber'
require 'httparty'
require 'json'
require 'pry'

require_relative 'pageobjects'

DATA = YAML.load_file("#{File.dirname(__FILE__)}/data/data.yaml")
World(PageObjects)