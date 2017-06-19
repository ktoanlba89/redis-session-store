require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

task :default => [:coverage]

RSpec::Core::RakeTask.new

desc 'Run specs with coverage'
task :coverage do
  ENV['COVERAGE'] = '1'
  Rake::Task['spec'].invoke
end
