# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

require 'circleci/coverage_reporter/rake_task' if ENV['CIRCLECI']

if ENV['CIRCLECI']
  CircleCI::CoverageReporter.configure do |config|
    config.reporters << CircleCI::CoverageReporter::Reporters::RubyCritic.new
  end
end

Rails.application.load_tasks
