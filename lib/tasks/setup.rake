require_relative 'task_helpers'
task :testing do
  puts 'helo i am a task'
  TaskHeklpers.fetch_pokes
end
