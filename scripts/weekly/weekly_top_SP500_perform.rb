#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "production"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

ar = []
ar = Dir.glob("/Users/sahaj/Desktop/data/s30/return/*")
ar = ar.sort.reverse
file_path =  ar[0]

puts "Updating S30 SP500 Return from: " + file_path

CSV.foreach(file_path, col_sep: "\t", headers: false) do |row|
  if(TopPerform.find_by(date: row[0]).nil?)
  	TopPerform.create(date: row[0], valu: row[1])
  	puts "S30 SP500 Return for " + row[0] + " updated."
  end
end