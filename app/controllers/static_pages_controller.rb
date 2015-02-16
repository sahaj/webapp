class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def strategy1
  	@maxdate = Strategy.maximum(:date)
  	@week_strategy = Strategy.all
  	@sname = StockName.all
  	@week_return = WeeklyEarning.all
  end
  
end
