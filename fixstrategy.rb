#!/usr/bin/env ruby
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
#uniq.pluck(:date)
date =  Strategy.pluck('DISTINCT date')#maximum("date")
puts date
puts "TOL: " + date[-2]