class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.includes(:stock_prices).find(1)
  end
end
