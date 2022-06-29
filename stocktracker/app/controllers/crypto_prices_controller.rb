class CryptoPricesController < ApplicationController
  before_action :set_crypto_price, only: %i[ show edit update destroy ]

  # GET /crypto_prices or /crypto_prices.json
  def index
    @crypto_prices = CryptoPrice.all
  end

  # GET /crypto_prices/1 or /crypto_prices/1.json
  def show
  end

  # GET /crypto_prices/new
  def new
    @crypto_price = CryptoPrice.new
  end

  # GET /crypto_prices/1/edit
  def edit
  end

  # POST /crypto_prices or /crypto_prices.json
  def create
    @crypto_price = CryptoPrice.new(crypto_price_params)

    respond_to do |format|
      if @crypto_price.save
        format.html { redirect_to crypto_price_url(@crypto_price), notice: "Crypto price was successfully created." }
        format.json { render :show, status: :created, location: @crypto_price }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crypto_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crypto_prices/1 or /crypto_prices/1.json
  def update
    respond_to do |format|
      if @crypto_price.update(crypto_price_params)
        format.html { redirect_to crypto_price_url(@crypto_price), notice: "Crypto price was successfully updated." }
        format.json { render :show, status: :ok, location: @crypto_price }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crypto_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crypto_prices/1 or /crypto_prices/1.json
  def destroy
    @crypto_price.destroy

    respond_to do |format|
      format.html { redirect_to crypto_prices_url, notice: "Crypto price was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crypto_price
      @crypto_price = CryptoPrice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crypto_price_params
      params.require(:crypto_price).permit(:price, :cryptocurrency_id, :captured_at)
    end
end
