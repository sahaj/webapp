#!/usr/bin/env ruby
require 'csv'
#ENV['RAILS_ENV'] = "development"
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

ar = []
ar = Dir.glob("/Users/sahaj/Desktop/article_info/*")
ar = ar.sort.reverse
date =  File.basename(ar[0]).slice(0,10)
file_name =  ar[0]

if Article.find_by(date: date).nil?
  puts "articles added for date: " + date
  CSV.foreach(file_name, col_sep: "\t", quote_char: "\x00") do |row|
    Article.create( s_id: row[0], articleid: row[1], sentiment: row[2], date: row[3], title: row[4], url: row[5])
  end
else
  puts "Articles for "+ date +" already exists"
end


