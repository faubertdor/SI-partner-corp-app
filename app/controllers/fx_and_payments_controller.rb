class FxAndPaymentsController < ApplicationController
  before_action :set_fx_and_payment, only: [:show, :edit, :update, :destroy]

  # GET /fx_and_payments/1
  # GET /fx_and_payments/1.json
  def show
  end

  # GET /fx_and_payments/new
  def new
    if current_user.fx_and_payment.nil?
      @fx_and_payment = current_user.build_fx_and_payment
    else
      redirect_to current_user.fx_and_payment
    end
  end

  # GET /fx_and_payments/1/edit
  def edit
  end

  # POST /fx_and_payments
  # POST /fx_and_payments.json
  def create
    @fx_and_payment = current_user.build_fx_and_payment(fx_and_payment_params)

    respond_to do |format|
      if @fx_and_payment.save
        format.html { redirect_to @fx_and_payment,
                      notice: 'Foreign Exchange and Payment was successfully added.' }
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
        format.html { redirect_to @fx_and_payment,
                      notice: 'Foreign Exchange and Payment was successfully updated.' }
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
      format.html { redirect_to fx_and_payments_url,
                    notice: 'Foreign Exchange and Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fx_and_payment
      @fx_and_payment = current_user.fx_and_payment
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fx_and_payment_params
      params.require(:fx_and_payment)
            .permit(:purpose, :currencies, :approx_trade_vol,
                    :approx_monthly_nb,:approx_annual_vol,
                    :countries_transf_to, :countries_transf_from)
    end
end
