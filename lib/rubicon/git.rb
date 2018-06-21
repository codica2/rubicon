module Rubicon
  module Git
    def git_command(str)
      systemu(str).second
    end
  end
end
