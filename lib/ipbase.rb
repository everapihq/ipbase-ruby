# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative "ipbase/version"
require_relative 'ipbase/endpoints'
require_relative 'ipbase/configuration'

module Ipbase
  BASE_URL = 'https://api.ipbase.com/v2/'

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Ipbase::Configuration.new
    yield(configuration)
  end
end
