class StocksController < ApplicationController
  def show
  end
 
  def index
    @name = params[:search].downcase
    @stock = Stock.where(s_id: @name)
    if @name =="" || @stock.empty?
      flash.now[:danger] = 'Please enter a valid stock name'
      render 'static_pages/home'
    else
      @sentiment = Article.where(s_id: @name).select('date, SUM(sentiment) as sentiment').group(:date)#.sum(:sentiment)
      @@stockname = @name
      @company = StockName.find_by(s_id: @name)
    end
  end
  
  def new #this fetches data for the articles frame
    @date = params[:datepicker]
    @article = Article.where('s_id=? and date=?', @@stockname, @date)
  end

end
