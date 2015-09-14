require "active_try/version"
require 'active_record'
require 'active_try/graph'

module ActiveTry
  @arr = []
  def self.included klass
    klass.reflections.each do |key, val|
      @arr << [key, val.macro]
    end
  end

  def self.show_arr
    @arr.each { |v| puts v }
  end
end
