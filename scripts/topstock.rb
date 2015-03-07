#!/usr/bin/env ruby
require 'fileutils'

top_path = "/Users/sahaj/Desktop/data/important_symbols.txt"
find_path = "/Users/sahaj/Desktop/historical/"
dest_path = "/Users/sahaj/Desktop/topstock/"

f = File.open(top_path)
count=0
f.each do |fn|
  src = find_path+fn.strip()
  if File.exists?(src)
    FileUtils.cp src, dest_path
  else
    puts src + " : Notopstock"
    count+=1
  end
end
puts count
f.close()