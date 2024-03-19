require 'sidekiq'
require 'sidekiq-cron'
Sidekiq.configure_server do |config|
# config.redis = { url: 'redis://localhost:6379/0' }
#   schedule_file = 'config/schedule.yml'
# if File.exist?(schedule_file) && Sidekiq.server?
#   Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
# end
config.on(:startup) do
  #   Sidekiq.schedule = YAML.load_file(File.expand_path('/Users/ajay.kumar.methuku/Documents/DocApp/config/sidekiq-cron.yml', __dir__))
  #  Sidekiq::Cron::Job.load_from_array! Sidekiq.schedule_array
  ####If we use above 2 lines then sidelkiq-cron.yml file is required or else not####
  #Sidekiq::Cron::Job.create(name: 'PrintArticlesWorkerJob', cron: '*/1 * * * *', class: 'PrintArticlesWorkerJob', queue: 'default')#args: Date.today.to_s )
  #Sidekiq::Cron::Job.create(name: 'PrintCommentsWorkerJob', cron: '*/1 * * * *', class: 'PrintCommentsWorkerJob', queue: 'default')#args: Date.today.to_s )
  end
end
