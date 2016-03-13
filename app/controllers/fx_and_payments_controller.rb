class FxAndPaymentsController < ApplicationController
  before_action :set_fx_and_payment, only: [:show, :edit, :update, :destroy]

  # GET /fx_and_payments
  # GET /fx_and_payments.json
  def index
    @fx_and_payments = FxAndPayment.all
  end

  # GET /fx_and_payments/1
  # GET /fx_and_payments/1.json
  def show
  end

  # GET /fx_and_payments/new
  def new
    @fx_and_payment = FxAndPayment.new
  end

  # GET /fx_and_payments/1/edit
  def edit
  end

  # POST /fx_and_payments
  # POST /fx_and_payments.json
  def create
    @fx_and_payment = FxAndPayment.new(fx_and_payment_params)

    respond_to do |format|
      if @fx_and_payment.save
        format.html { redirect_to @fx_and_payment, notice: 'Fx and payment was successfully created.' }
        format.json { render :show, status: :created, location: @fx_and_payment }
      else
        format.html { render :new }
        format.json { render json: @fx_and_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fx_and_payments/1
  # PATCH/PUT /fx_and_payments/1.json
  def update
    respond_to do |format|
      if @fx_and_payment.update(fx_and_payment_params)
        format.html { redirect_to @fx_and_payment, notice: 'Fx and payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @fx_and_payment }
      else
        format.html { render :edit }
        format.json { render json: @fx_and_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fx_and_payments/1
  # DELETE /fx_and_payments/1.json
  def destroy
    @fx_and_payment.destroy
    respond_to do |format|
      format.html { redirect_to fx_and_payments_url, notice: 'Fx and payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fx_and_payment
      @fx_and_payment = FxAndPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fx_and_payment_params
      params.require(:fx_and_payment).permit(:purpose, :currencies, :approx_trade_vol, :approx_monthly_nb, :approx_annual_vol, :countries_trans_to, :countries_trans_from, :user_id)
    end
end
