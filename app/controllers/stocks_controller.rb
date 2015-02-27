class StocksController < ApplicationController
  def show
    @stock = Stock.find_by(s_id: params[:stock][:name])
  end
 
  def index
    @name = params[:search].downcase
    @stock = Stock.where(s_id: @name)
    @sentiment = Article.where(s_id: @name).select('date, SUM(sentiment) as sentiment').group(:date)#.sum(:sentiment)
    @@stockname = @name
  end
  
  def new #this fetches data for the articles frame
    @date = params[:datepicker]
    @article = Article.where('s_id=? and date=?', @@stockname, @date)
  end

end
