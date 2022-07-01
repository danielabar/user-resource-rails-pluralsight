class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
    @stock_prices = StockPrice.where(company_id: @company.id)

    # a better way?
    # Company.includes(:stock_prices).find(1)
  end
end
