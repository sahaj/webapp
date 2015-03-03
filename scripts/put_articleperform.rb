#!/usr/bin/env ruby
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

perform_path = "/Users/sahaj/Desktop/data/return/SP500_perA_return.txt"
CSV.foreach(perform_path, col_sep: "\t", headers: false) do |row|
  ArticlePerform.create(date: row[2], valu: row[3])
end
