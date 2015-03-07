#!/usr/bin/env ruby

require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

strategy_path = "/Users/sahaj/Desktop/data/s30/strategy/*"
fname_ar = []
fname_ar = Dir.glob(strategy_path).grep(/perA/)
fname_ar.each do |fname|
  CSV.foreach(fname, col_sep: "\t") do |row|
      TopStrategy.create(date: row[0], s_id: row[1], todo: row[2])
  end
end
