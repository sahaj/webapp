#!/usr/bin/env ruby

require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

stockname_path = "/Users/sahaj/Desktop/data/symbol_company_name_mapping.txt"

CSV.foreach(stockname_path, col_sep: "\t", headers: true) do |row|
  StockName.create(s_id: row[1], old_id: row[0], s_name: row[2])
end
