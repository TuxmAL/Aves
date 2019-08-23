# frozen_string_literal: true

require 'rubocop/rake_task'

desc 'Default task; execute rubocop first, then all tests.'
task default: %i[rubocop test]

desc 'Task for test execution.'
task :test do
  ruby 'test/test_all.rb'
end

RuboCop::RakeTask.new(:rubocop)

desc 'Run RuboCop on the lib directory only'
RuboCop::RakeTask.new(:rubocop_libonly) do |task|
  task.options = ['--display-cop-names']
  task.patterns = ['lib/**/*.rb']
  # only show the files with failures
  task.formatters = ['files']
  # don't abort rake on failures
  task.fail_on_error = false
end

# task :rubocop do
#   puts package_dir_path()
#   sh 'bundle exec rubocop --format html -o rubocop.html || true'
# end
