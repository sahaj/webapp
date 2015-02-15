class StocksController < ApplicationController
  def show
    @stock = Stock.find_by(name: params[:stock][:name])
  end
 
  def index
    @name = params[:search]
    @stock = Stock.where(name: @name)
    @sentiment = Article.where(stockname: @name).select('date, SUM(sentiment) as sentiment').group(:date)#.sum(:sentiment)
    @@stockname = @name
  end
  
  def new #this fetches data for the articles frame
    @date = params[:datepicker]
    @article = Article.where('stockname=? and date=?', @@stockname, @date)
  end

end
