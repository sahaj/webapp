#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "production"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

ar = []
ar = Dir.glob("/Users/sahaj/Desktop/data/earning/*").grep(/perA_sid_agg/)
ar = ar.sort.reverse
date =  File.basename(ar[0]).slice(0,10)
file_name =  ar[0]

if TotalEarning.find_by(date: date).nil?
  puts "perA Total Earning added for date: " + date
  CSV.foreach(file_name, col_sep: "\t") do |row|
    TotalEarning.create(date: row[0], s_id: row[1], earning: row[2])
  end
else
  puts "perA Total Earning for "+ date +" already exists"
end
