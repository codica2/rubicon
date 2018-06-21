module Rubicon
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load 'tasks/rubicon_tasks.rake'
    end
  end
end
