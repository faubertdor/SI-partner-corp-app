require 'test_helper'

class GeneralInfosControllerTest < ActionController::TestCase
  setup do
    @general_info = general_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_info" do
    assert_difference('GeneralInfo.count') do
      post :create, general_info: { cell_number: @general_info.cell_number, city: @general_info.city, corporate_name: @general_info.corporate_name, country: @general_info.country, country_of_inc: @general_info.country_of_inc, email: @general_info.email, fax_number: @general_info.fax_number, landline_number: @general_info.landline_number, money_services_business: @general_info.money_services_business, nature_of_business: @general_info.nature_of_business, precious_stones_or_metals: @general_info.precious_stones_or_metals, public_company: @general_info.public_company, public_company: @general_info.public_company, registration_number: @general_info.registration_number, state: @general_info.state, state_of_inc: @general_info.state_of_inc, street_address: @general_info.street_address, tax_id: @general_info.tax_id, trade_name: @general_info.trade_name, travel_or_tour_company: @general_info.travel_or_tour_company, user_id: @general_info.user_id, website: @general_info.website, zip_code: @general_info.zip_code }
    end

    assert_redirected_to general_info_path(assigns(:general_info))
  end

  test "should show general_info" do
    get :show, id: @general_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_info
    assert_response :success
  end

  test "should update general_info" do
    patch :update, id: @general_info, general_info: { cell_number: @general_info.cell_number, city: @general_info.city, corporate_name: @general_info.corporate_name, country: @general_info.country, country_of_inc: @general_info.country_of_inc, email: @general_info.email, fax_number: @general_info.fax_number, landline_number: @general_info.landline_number, money_services_business: @general_info.money_services_business, nature_of_business: @general_info.nature_of_business, precious_stones_or_metals: @general_info.precious_stones_or_metals, public_company: @general_info.public_company, public_company: @general_info.public_company, registration_number: @general_info.registration_number, state: @general_info.state, state_of_inc: @general_info.state_of_inc, street_address: @general_info.street_address, tax_id: @general_info.tax_id, trade_name: @general_info.trade_name, travel_or_tour_company: @general_info.travel_or_tour_company, user_id: @general_info.user_id, website: @general_info.website, zip_code: @general_info.zip_code }
    assert_redirected_to general_info_path(assigns(:general_info))
  end

  test "should destroy general_info" do
    assert_difference('GeneralInfo.count', -1) do
      delete :destroy, id: @general_info
    end

    assert_redirected_to general_infos_path
  end
end
