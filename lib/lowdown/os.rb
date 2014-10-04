class Lowdown
  # Operating system details.
  class OS
    KNOWN_OS = {
      /bsd/ => :bsd,
      /darwin/ => :os_x,
      /linux/ => :linux,
      /mswin|mingw/ => :windows
    }

    # Returns the OS name detected.
    attr_reader :name

    # Returns the OS version detected.
    attr_reader :version

    def initialize
      @name = detect_name
    end

    private

    def detect_name
      host_os = RbConfig::CONFIG['host_os']
      KNOWN_OS.each do |match, os|
        return os if match =~ host_os
      end
    end
  end
end
