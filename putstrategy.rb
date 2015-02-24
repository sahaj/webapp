#!/usr/bin/env ruby

#ENV['RAILS_ENV'] = "development"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

fname_ar = []
fname_ar = Dir.glob("/Users/sahaj/Desktop/data/strategy/*").grep(/perA/)
fname_ar.each do |fname|
  CSV.foreach(fname, col_sep: "\t") do |row|
    Strategy.create(date: row[0], s_id: row[1], todo: row[2])
  end
end
