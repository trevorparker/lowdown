class Lowdown
  # Operating system details.
  class OS
    KNOWN_OS = {
      /bsd/ => :bsd,
      /darwin/ => :os_x,
      /linux/ => :linux,
      /solaris/ => :solaris,
      /mswin|mingw/ => :windows
    }

    def name
      @name ||= detect_name
    end

    def version
      @version ||= detect_version
    end

    private

    def detect_name
      host_os = RbConfig::CONFIG['host_os']
      KNOWN_OS.each do |match, os|
        return os if match =~ host_os
      end
    end

    def detect_version
      return `sw_vers -productVersion`.strip if name == :os_x
    end
  end
end
