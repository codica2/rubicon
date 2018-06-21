module Rubicon
  module File
    def write(version = '0.0.0')
      ::File.open(version_file, 'w') { |f| f.write(version) }
    end

    def version_file
      "#{Rails.root}/VERSION"
    end

    def read
      write unless ::File.exist?(version_file)

      ver = IO.read(version_file)
      ver.empty? ? '0.0.0' : IO.read(version_file)
    end
  end
end
