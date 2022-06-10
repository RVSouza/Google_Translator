require 'cucumber'
require 'httparty'
require 'json'
require 'pry'

DATA = YAML.load_file("#{File.dirname(__FILE__)}/data/data.yaml")
