require 'test_helper'

class SignatoriesControllerTest < ActionController::TestCase
  setup do
    @signatory = signatories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:signatories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create signatory" do
    assert_difference('Signatory.count') do
      post :create, signatory: { city: @signatory.city, country: @signatory.country, dob: @signatory.dob, full_legal_name: @signatory.full_legal_name, state: @signatory.state, street_address: @signatory.street_address, title: @signatory.title, user_id: @signatory.user_id, zip_code: @signatory.zip_code }
    end

    assert_redirected_to signatory_path(assigns(:signatory))
  end

  test "should show signatory" do
    get :show, id: @signatory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @signatory
    assert_response :success
  end

  test "should update signatory" do
    patch :update, id: @signatory, signatory: { city: @signatory.city, country: @signatory.country, dob: @signatory.dob, full_legal_name: @signatory.full_legal_name, state: @signatory.state, street_address: @signatory.street_address, title: @signatory.title, user_id: @signatory.user_id, zip_code: @signatory.zip_code }
    assert_redirected_to signatory_path(assigns(:signatory))
  end

  test "should destroy signatory" do
    assert_difference('Signatory.count', -1) do
      delete :destroy, id: @signatory
    end

    assert_redirected_to signatories_path
  end
end
