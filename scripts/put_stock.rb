#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "development"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

#stock_path = "/Users/sahaj/Desktop/data/stock_historical_data/*"
topstock_path = "/Users/sahaj/Desktop/topstock/*"
ar = []
ar = Dir.glob(topstock_path)

ar.each do |a|
  sname = File.basename(a)
  puts sname
  CSV.foreach(a, col_sep: "," , headers: true) do |row|
    Stock.create(s_id: sname, date: row[0], adjclose: row[6])
  end
end
