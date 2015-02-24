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
  	@week_strategy = Strategy.where(date: @maxdate)
    @prev_week_strategy = Strategy.where(date: @prevdate)
    @sname = WeeklyEarning.pluck('DISTINCT s_id')
  	#@sname = StockName.all
  	@week_return = WeeklyEarning.all
  end
  
end
