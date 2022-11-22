class HealthWalletsController < ApplicationController
  before_action :set_health_wallet, only: %i[ show edit update destroy ]

  # GET /health_wallets or /health_wallets.json
  def index
    @health_wallets = HealthWallet.all
  end

  # GET /health_wallets/1 or /health_wallets/1.json
  def show
  end

  # GET /health_wallets/new
  def new
    @health_wallet = HealthWallet.new
  end

  # GET /health_wallets/1/edit
  def edit
  end

  # POST /health_wallets or /health_wallets.json
  def create
    @health_wallet = HealthWallet.new(health_wallet_params)

    respond_to do |format|
      if @health_wallet.save
        format.html { redirect_to health_wallet_url(@health_wallet), notice: "Health wallet was successfully created." }
        format.json { render :show, status: :created, location: @health_wallet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @health_wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_wallets/1 or /health_wallets/1.json
  def update
    respond_to do |format|
      if @health_wallet.update(health_wallet_params)
        format.html { redirect_to health_wallet_url(@health_wallet), notice: "Health wallet was successfully updated." }
        format.json { render :show, status: :ok, location: @health_wallet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @health_wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_wallets/1 or /health_wallets/1.json
  def destroy
    @health_wallet.destroy

    respond_to do |format|
      format.html { redirect_to health_wallets_url, notice: "Health wallet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_wallet
      @health_wallet = HealthWallet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def health_wallet_params
      params.fetch(:health_wallet, {})
    end
end
