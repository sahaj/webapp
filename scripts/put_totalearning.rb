#!/usr/bin/env ruby

require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

t_strategy_path = "/Users/sahaj/Desktop/earning/*"
fname_ar = []
fname_ar = Dir.glob(t_strategy_path).grep(/perA_sid_agg_earning/)
fname_ar.each do |fname|
  CSV.foreach(fname, col_sep: "\t") do |row|
    TotalEarning.create(date: row[0], s_id: row[1], earning: row[2])
  end
end


#sname = StockName.find_by(s_id: row[1])
  	#if !sname.nil?