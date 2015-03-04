#!/usr/bin/env ruby

require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

strategy_path = "/Users/sahaj/Desktop/data/strategy/*"
fname_ar = []
fname_ar = Dir.glob(strategy_path).grep(/perA/)
fname_ar.each do |fname|
  CSV.foreach(fname, col_sep: "\t") do |row|
  	sname = StockName.find_by(s_id: row[1])
  	sname_old = StockName.find_by(old_id: row[1])
  	if !sname.nil?
      Strategy.create(date: row[0], s_id: row[1], todo: row[2], stock_names_id: sname.id)
    else
      Strategy.create(date: row[0], s_id: row[1], todo: row[2], stock_names_id: sname_old.id)
    end
  end
end
