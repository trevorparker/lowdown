require 'lowdown/os'
require 'lowdown/version'

# A system intelligence library with graceful degradation.
class Lowdown
  # Detected operating system details.
  attr_reader :os

  def initialize
    @os ||= Lowdown::OS.new
  end
end
