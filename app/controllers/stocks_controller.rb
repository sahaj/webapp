class StocksController < ApplicationController
  def show
    @stock = Stock.find_by(name: params[:stock][:name])
  end
  def create
    @stock = Stock.find_by(name: params[:stock][:name])
  end


end
