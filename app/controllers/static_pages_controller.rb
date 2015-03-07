class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def strategy1
  	@maxdate = Strategy.maximum(:date)

    @perform = Perform.all
    @perA_perform = ArticlePerform.all
  end

  def topstrategy
    @dates =  TopStrategy.pluck('DISTINCT date')
    @maxdate = @dates[-1]

    @week_strat = TopStrategy.where(date: @maxdate)

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
    @week_return = TopWeeklyEarning.where(date: @maxdate)
    @total_return = TopTotalEarning.where(date: @maxdate)

    @perform = TopPerform.all
    @perA_perform = TopArticlePerform.all

  end
  
  def top30
    @d = TopPerform.where('date<=?', params[:datepicker]).maximum(:date)
    @base = TopPerform.where(date: @d).pluck(:valu)

    @d_perA = TopArticlePerform.where('date<=?', params[:datepicker]).maximum(:date)
    @base_perA = TopArticlePerform.where(date: @d_perA).pluck(:valu)
    
    @perform = TopPerform.where("date>=?",params[:datepicker])
    @perA_perform = TopArticlePerform.where("date>=?",params[:datepicker])
  end

  def top500
    @d = Perform.where('date<=?', params[:datepicker]).maximum(:date)
    @base = Perform.where(date: @d).pluck(:valu)

    @d_perA = ArticlePerform.where('date<=?', params[:datepicker]).maximum(:date)
    @base_perA = ArticlePerform.where(date: @d_perA).pluck(:valu)
    
    
    @perform = Perform.where("date>=?",params[:datepicker])
    @perA_perform = ArticlePerform.where("date>=?",params[:datepicker])
  end
end
