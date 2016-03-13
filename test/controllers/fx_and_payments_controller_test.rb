require 'test_helper'

class FxAndPaymentsControllerTest < ActionController::TestCase
  setup do
    @fx_and_payment = fx_and_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fx_and_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fx_and_payment" do
    assert_difference('FxAndPayment.count') do
      post :create, fx_and_payment: { approx_annual_vol: @fx_and_payment.approx_annual_vol, approx_monthly_nb: @fx_and_payment.approx_monthly_nb, approx_trade_vol: @fx_and_payment.approx_trade_vol, countries_trans_from: @fx_and_payment.countries_trans_from, countries_trans_to: @fx_and_payment.countries_trans_to, currencies: @fx_and_payment.currencies, purpose: @fx_and_payment.purpose, user_id: @fx_and_payment.user_id }
    end

    assert_redirected_to fx_and_payment_path(assigns(:fx_and_payment))
  end

  test "should show fx_and_payment" do
    get :show, id: @fx_and_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fx_and_payment
    assert_response :success
  end

  test "should update fx_and_payment" do
    patch :update, id: @fx_and_payment, fx_and_payment: { approx_annual_vol: @fx_and_payment.approx_annual_vol, approx_monthly_nb: @fx_and_payment.approx_monthly_nb, approx_trade_vol: @fx_and_payment.approx_trade_vol, countries_trans_from: @fx_and_payment.countries_trans_from, countries_trans_to: @fx_and_payment.countries_trans_to, currencies: @fx_and_payment.currencies, purpose: @fx_and_payment.purpose, user_id: @fx_and_payment.user_id }
    assert_redirected_to fx_and_payment_path(assigns(:fx_and_payment))
  end

  test "should destroy fx_and_payment" do
    assert_difference('FxAndPayment.count', -1) do
      delete :destroy, id: @fx_and_payment
    end

    assert_redirected_to fx_and_payments_path
  end
end
