#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "production"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

ar = []
ar = Dir.glob("/Users/sahaj/Desktop/data/s30/return/*").grep(/perA/)
ar = ar.sort.reverse
date =  File.basename(ar[0]).slice(0,10)
file_path =  ar[0]
puts "Updating perA S30 Return from: " + file_path

CSV.foreach(file_path, col_sep: "\t", headers: false) do |row|
  if(row[0] == date && TopArticlePerform.find_by(date: date).nil?)
  	TopArticlePerform.create(date: row[0], valu: row[1])
  	puts "S30 perA Return for " + date + " updated."
  end
end