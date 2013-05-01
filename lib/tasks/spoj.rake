require 'nokogiri'
require 'open-uri'

desc 'SPOJ related tasks'
namespace :spoj do

  desc 'start new SPOJ problem'
  task :new => :environment do |args|
    problem_code = 'FCTRL'
    url = "http://www.spoj.com/problems/#{problem_code}/"

    doc = Nokogiri::HTML(open(url))

  end


end