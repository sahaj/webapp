#!/usr/bin/env ruby
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

perform_path = "/Users/sahaj/Desktop/data/s30/return/SP500_return.txt"
CSV.foreach(perform_path, col_sep: "\t", headers: false) do |row|
  TopPerform.create(date: row[0], valu: row[1])
end
