#!/usr/bin/env ruby
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

#historical data is in /Users/sahaj/Desktop/data/return/SP500_perA_return.txt
#perform_path = "/Users/sahaj/Desktop/data/return/SP500_perA_return.txt"
#CSV.foreach(perform_path, col_sep: "\t", headers: false) do |row|
 # ArticlePerform.create(date: row[2], valu: row[3])
#end

#This script is for data starting 2015-01-01. Each day data is apended in a new file. FIX THIS
perform_path = "/Users/sahaj/Desktop/data/return/2015-03-02_perA_return.txt"
CSV.foreach(perform_path, col_sep: "\t", headers: false) do |row|
  ArticlePerform.create(date: row[0], valu: row[1])
end
