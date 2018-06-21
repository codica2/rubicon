module Rubicon
  class Version
    POSITIONS = { major: 0, minor: 1, patch: 2 }.freeze

    include Rubicon::File
    include Rubicon::Git

    attr_reader :current

    def initialize
      @current = read
    end

    def release(category)
      new_version = bump_version(category).join('.')
      write(new_version)
      git_tag(new_version)
    end

    private

    def old_version
      current.split('.').map(&:to_i)
    end

    def bump_version(category, array = old_version)
      position = POSITIONS[category]

      array[position] += 1
      stable = array[0..position]
      reset = Array.new(array[(position + 1)..-1].size, 0)

      stable + reset
    end

    def git_tag(version)
      git_command("git tag v#{version}")
    end
  end
end
