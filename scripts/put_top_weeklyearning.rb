#!/usr/bin/env ruby

require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

w_strategy_path = "/Users/sahaj/Desktop/data/s30/earning/*"
fname_ar = []
fname_ar = Dir.glob(w_strategy_path).grep(/perA_sid_cur_earning/)
fname_ar.each do |fname|
  CSV.foreach(fname, col_sep: "\t") do |row|
    TopWeeklyEarning.create(date: row[0], s_id: row[1], earning: row[2])
  end
end