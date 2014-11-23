require "resque/tasks"
task "resque:setup" => :environment
require "/home/traveltriangle/myprojects/rails_with_mongodb/mongoblog/lib/resque_process_email.rb"
