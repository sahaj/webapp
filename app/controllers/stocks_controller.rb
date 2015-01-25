class StocksController < ApplicationController
  def show
    @stock = Stock.find_by(name: params[:stock][:name])
  end
  def index
    @stock = Stock.where(name: params[:search])
    @name = params[:search]
  end


end
