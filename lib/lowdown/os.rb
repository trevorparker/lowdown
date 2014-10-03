class Lowdown
  class OS
    # Returns the OS name detected.
    attr_reader :name

    # Returns the OS version detected.
    attr_reader :version

    def initialize
      @name = detect_name
    end

    private

    def detect_name
      case RbConfig::CONFIG['host_os']
      when /bsd/
        detect_bsd_flavor
      when /darwin/
        'OS X'
      when /linux/
        'Linux'
      when /solaris/
        'Solaris'
      when /mswin|mingw/
        'Windows'
      end
    end

    def detect_bsd_flavor
      `uname`.strip!
    end
  end
end
