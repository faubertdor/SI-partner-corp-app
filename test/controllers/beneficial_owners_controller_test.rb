require 'test_helper'

class BeneficialOwnersControllerTest < ActionController::TestCase
  setup do
    @beneficial_owner = beneficial_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beneficial_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beneficial_owner" do
    assert_difference('BeneficialOwner.count') do
      post :create, beneficial_owner: { citizenship: @beneficial_owner.citizenship, city: @beneficial_owner.city, corporate_personnel_id: @beneficial_owner.corporate_personnel_id, country: @beneficial_owner.country, full_legal_name: @beneficial_owner.full_legal_name, ownership_percentage: @beneficial_owner.ownership_percentage, state: @beneficial_owner.state, street_address: @beneficial_owner.street_address, zip_code: @beneficial_owner.zip_code }
    end

    assert_redirected_to beneficial_owner_path(assigns(:beneficial_owner))
  end

  test "should show beneficial_owner" do
    get :show, id: @beneficial_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beneficial_owner
    assert_response :success
  end

  test "should update beneficial_owner" do
    patch :update, id: @beneficial_owner, beneficial_owner: { citizenship: @beneficial_owner.citizenship, city: @beneficial_owner.city, corporate_personnel_id: @beneficial_owner.corporate_personnel_id, country: @beneficial_owner.country, full_legal_name: @beneficial_owner.full_legal_name, ownership_percentage: @beneficial_owner.ownership_percentage, state: @beneficial_owner.state, street_address: @beneficial_owner.street_address, zip_code: @beneficial_owner.zip_code }
    assert_redirected_to beneficial_owner_path(assigns(:beneficial_owner))
  end

  test "should destroy beneficial_owner" do
    assert_difference('BeneficialOwner.count', -1) do
      delete :destroy, id: @beneficial_owner
    end

    assert_redirected_to beneficial_owners_path
  end
end
