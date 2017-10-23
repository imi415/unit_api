$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "./../lib"))

require 'unit_api'

client = UnitClient.new("http://localhost:8182");

p client.status
