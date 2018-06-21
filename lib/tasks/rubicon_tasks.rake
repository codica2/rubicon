namespace :rubicon do
  desc 'bump the patch version (1.2.x)'
  task patch: :environment do
    update_version(:patch)
  end

  desc 'bump the minor version (1.x.0)'
  task minor: :environment do
    update_version(:minor)
  end

  desc 'bump the major version (x.0.0)'
  task major: :environment do
    update_version(:major)
  end
end

def update_version(step)
  app_version = Rubicon::Version.new
  app_version.release(step)
end
