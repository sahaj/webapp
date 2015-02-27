#!/usr/bin/env ruby

require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

stockname_path = "/Users/sahaj/Desktop/data/mapping.txt"

CSV.foreach(stockname_path, col_sep: "\t", headers: true) do |row|
  StockName.create(row.to_hash)
end
