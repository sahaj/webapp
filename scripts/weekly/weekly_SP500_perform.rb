#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "production"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

ar = []
ar = Dir.glob("/Users/sahaj/Desktop/data/return/*")
ar = ar.sort.reverse
file_path =  ar[0]

puts "Updating SP500 Return from: " + file_path

CSV.foreach(file_path, col_sep: "\t", headers: false) do |row|
  if(Perform.find_by(date: row[0]).nil?)
  	Perform.create(date: row[0], valu: row[1])
  	puts "Return for " + row[0] + " updated."
  end
end