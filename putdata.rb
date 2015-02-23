#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "development"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

ar = []
ar = Dir.glob("/Users/sahaj/Desktop/data/stock_historical_data/*")

ar.each do |a|
  num = File.open(a).readlines.size - 1
  puts File.basename(a) + ":" + num.to_s
  File.open(a) do |fi|
    begin
      1.times { fi.readline }
      num.times.each {
        CSV.parse(fi.readline, col_sep: ",") do |row|
          #if Stock.where("name = ? AND date = ?",  File.basename(a), row[0]).blank? 
          Stock.create(name: File.basename(a), date: row[0], open: row[1], high: row[2], low: row[3], close: row[4], volume: row[5], adjclose: row[6])
          #else
           # puts File.basename(a) + " for date : " + row[0] + " Exists"
          #end 
        end
      }
    end
  end
end
