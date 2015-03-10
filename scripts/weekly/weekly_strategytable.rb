#!/usr/bin/env ruby
require '/Users/sahaj/Desktop/SAND Lab/webapp/config/environment.rb'

def putfile
    fw = File.open('/Users/sahaj/Desktop/SAND Lab/webapp/db/strategy500.json', 'w')
    
    #dates =  Strategy.pluck('DISTINCT date')
    maxdate = Strategy.maximum(:date)
    #prevdate = dates[-2]

  	week_strat = Strategy.where(date: maxdate)
    #prev_week_strat = Strategy.where(date: prevdate)

    sid = week_strat.pluck('DISTINCT s_id')
    sname = Hash.new()
    sid.each do |s|
      v = StockName.find_by(s_id: s)
      if v != nil 
        sname[s] = v.s_name
      else
        v = StockName.find_by(old_id: s)
        sname[s] = v.s_name
      end
    end
  	week_return = WeeklyEarning.where(date: maxdate)
    total_return = TotalEarning.where(date: maxdate)


    fw.puts("[")
	sid.each do |s|
		
		fw.puts("{")

		fw.puts("\"symbol\":" + " \""+ s.upcase + "\"" + ",")
        
        if sname.has_key?(s)
        	fw.puts("\"name\":" + " \""+ sname.fetch(s).titleize + "\"" + ",")
        end
        
        wr = week_return.find_by(s_id: s)
        
        if wr != nil
            fw.puts("\"w_return\":" + " \"" + ('%.3f' % wr.earning).to_s + "\"" + ",")
        end

        tr = total_return.find_by(s_id: s)
        if tr != nil
        	fw.puts("\"t_return\":" + " \"" + ('%.3f' % tr.earning).to_s + "\"" + ",") 
        end

        ws = week_strat.find_by(s_id: s)
        #pws = prev_week_strat.find_by(s_id: s)
        if ws!=nil
        	if ws.todo=='on'
        		fw.puts("\"todo\":" + " \"" + "HOLD"+ "\"")
            elsif ws.todo=='off'
                fw.puts("\"todo\":" + " \"" + "NO ACTION"+ "\"")
            else
                fw.puts("\"todo\":" + " \"" + ws.todo.upcase + "\"")
            end
        end
        fw.puts("},")
    end
    fw.puts("]")
    fw.close
end

putfile