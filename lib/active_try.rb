require "active_try/version"
require 'active_record'

module ActiveTry
  def self.included klass
    binding.pry
  end
end
