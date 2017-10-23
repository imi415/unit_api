# !!
require 'bundler'

Bundler.require

require 'json'
require 'pp'

class UnitClient
  include HTTParty
  @base_uri = ''

  def initialize(api_base)
    @base_uri = api_base
  end

  def status
    return UnitStatus.new(self.class.get("#{@base_uri}/").parsed_response)
  end
  def listener
  end
end

class UnitStatus
  attr_accessor :listeners, :applications
  def initialize(api_obj)
    @listeners = api_obj["listeners"].values
    @applications = api_obj["applications"].values
  end
end

class UnitApplication
end

class UnitListener
end
