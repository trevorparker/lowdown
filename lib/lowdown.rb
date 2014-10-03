require 'lowdown/os'
require 'lowdown/version'

class Lowdown
  # Detected operating system details.
  attr_reader :os

  def initialize
    @os ||= Lowdown::OS.new
  end
end

