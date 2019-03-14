# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

namespace :habits do
  task :daily_reset, :environment do
    Habit.find_each { |habit| habit.update(status: false) }
  end
  task :set_reminders, :environment do
    Habit.find_each do |habit|
      next unless habit.reminder
      TwilioRelayJob.set(wait_until: habit.reminder).perform_later(habit)
    end
  end
end
