#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "development"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

ar = []
ar = Dir.glob("/Users/sahaj/Desktop/data/article_info/*")

ar.each do |a|
  puts File.basename(a)
  File.open(a) do |fi|
    begin
      CSV.parse(fi.readline, col_sep: ",") do |row|
        if Stock.where("s_id = ? AND date = ?",  File.basename(a), row[0]).blank? 
          Stock.create(s_id: File.basename(a), date: row[0], open: row[1], high: row[2], low: row[3], close: row[4], volume: row[5], adjclose: row[6])
        else
          puts File.basename(a) + " for date : " + row[0] + " Exists"
        end 
      end
      }
    end
  end
end
ar = []
ar = Dir.glob("/Users/sahaj/Desktop/data/article_info/*")
ar = ar.sort.reverse
puts File.basename(ar[0]).slice(0,10)

