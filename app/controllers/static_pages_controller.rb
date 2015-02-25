class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def strategy1
  	#@maxdate = Strategy.maximum(:date)
    @dates =  Strategy.pluck('DISTINCT date')
    @maxdate = @dates[-1]
    @prevdate = @dates[-2]

  	@week_strat = Strategy.where(date: @maxdate)
    @prev_week_strat = Strategy.where(date: @prevdate)

    @sid = Strategy.pluck('DISTINCT s_id')
    @sname = Hash.new()
    @sid.each do |s|
      v = StockName.find_by(s_id: s)
      if v != nil 
        @sname[s] = v.s_name
      end
    end

  	@week_return = WeeklyEarning.where(date: @maxdate)
    @total_return = TotalEarning.where(date: @maxdate)

  end
  
end
