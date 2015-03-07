#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "development"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

#select distinct stocks from stock table
#for each of them read file and enter data.
s_ar = Stock.pluck('DISTINCT s_id')

s_ar.each do |stock|
  stock_file = "/Users/sahaj/Desktop/data/stock_historical_data/" + stock
  CSV.foreach(stock_file, col_sep: ",", headers: true) do |row|
    if Stock.where("s_id = ? AND date = ?",  stock, row[0]).blank? 
      Stock.create(s_id: stock, date: row[0], adjclose: row[6])
      puts stock + " for date : " + row[0] + " updated"
    else
      puts stock + " for date : " + row[0] + " exists"
      break
    end
  end
end
