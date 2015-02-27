#!/usr/bin/env ruby
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'
require 'csv'

articles_path = "/Users/sahaj/Desktop/data/article_info/*"
fname_ar = []
fname_ar = Dir.glob(articles_path)
fname_ar.each do |fname|
  CSV.foreach(fname, col_sep: "\t", quote_char: "\x00") do |row|
    Article.create( s_id: row[0], articleid: row[1], sentiment: row[2], date: row[3], title: row[4], url: row[5])
  end
end
