require 'code_assistant'

desc 'SPOJ related tasks'
namespace :spoj do

  desc 'start new SPOJ problem'
  task :new, :code do |t, args|
    code = args[:code]
    parser = Spoj::ProblemParser.new
    problem = parser.parse_problem code

    puts problem.to_yaml

  end


end