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

    @sid = @week_strat.pluck('DISTINCT s_id')
    @sname = Hash.new()
    @sid.each do |s|
      v = StockName.find_by(s_id: s)
      if v != nil 
        @sname[s] = v.s_name
      else
        v = StockName.find_by(old_id: s)
        @sname[s] = v.s_name
      end
    end
  	@week_return = WeeklyEarning.where(date: @maxdate)
    @total_return = TotalEarning.where(date: @maxdate)

    @perform = Perform.all
    @perA_perform = ArticlePerform.all
    #respond_to do |format|
     # format.json
    #end
    #Strategy.uniq(:s_id).find_by(date: '2015-03-02')
  end
  
end
