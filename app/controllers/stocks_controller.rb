class StocksController < ApplicationController
  def show
    @stock = Stock.find_by(name: params[:stock][:name])
  end
 
  def index
    @name = params[:search]
    @stock = Stock.where(name: @name)
    @@stockname = @name
  end
  
  def new
    @date = params[:datepicker]
    @article = Article.where('stockname=? and date=?', @@stockname, @date)
  end

end
