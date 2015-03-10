#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "production"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

ar = []
ar = Dir.glob("/Users/sahaj/Desktop/data/s30/strategy/*").grep(/perA/)
ar = ar.sort.reverse
date =  File.basename(ar[0]).slice(0,10)
file_path =  ar[0]
puts "Updating perA S30 Strategy from: " + file_path

if TopStrategy.find_by(date: date).nil?
  puts "perA S30 Strategy for "+ date +" updated"
  CSV.foreach(file_path, col_sep: "\t") do |row|
    sname = StockName.find_by(s_id: row[1])
    sname_old = StockName.find_by(old_id: row[1])
    if !sname.nil?
      TopStrategy.create(date: row[0], s_id: row[1], todo: row[2])
    else
      TopStrategy.create(date: row[0], s_id: row[1], todo: row[2])
    end
  end
else
  puts "perA S30 Strategy for "+ date +" already exists"
end
