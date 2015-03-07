#!/usr/bin/env ruby
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

# This is for historical data of article perform
#perform_path = "/Users/sahaj/Desktop/data/s30/return/SP500_perA_return.txt"
#CSV.foreach(perform_path, col_sep: "\t", headers: false) do |row|
#  TopArticlePerform.create(date: row[2], valu: row[3])
#end

#TODO: FIX THIS!!!
#This script is for data starting 2015-01-01. Each day data is apended at end in a new file. 
perform_path = "/Users/sahaj/Desktop/data/s30/return/2015-03-02_perA_return.txt"
CSV.foreach(perform_path, col_sep: "\t", headers: false) do |row|
  TopArticlePerform.create(date: row[0], valu: row[1])
end
