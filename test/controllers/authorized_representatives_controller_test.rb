require 'test_helper'

class AuthorizedRepresentativesControllerTest < ActionController::TestCase
  setup do
    @authorized_representative = authorized_representatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authorized_representatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create authorized_representative" do
    assert_difference('AuthorizedRepresentative.count') do
      post :create, authorized_representative: { city: @authorized_representative.city, corporate_personnel_id: @authorized_representative.corporate_personnel_id, country: @authorized_representative.country, dob: @authorized_representative.dob, full_legal_name: @authorized_representative.full_legal_name, occupation: @authorized_representative.occupation, state: @authorized_representative.state, street_address: @authorized_representative.street_address, title: @authorized_representative.title, zip_code: @authorized_representative.zip_code }
    end

    assert_redirected_to authorized_representative_path(assigns(:authorized_representative))
  end

  test "should show authorized_representative" do
    get :show, id: @authorized_representative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @authorized_representative
    assert_response :success
  end

  test "should update authorized_representative" do
    patch :update, id: @authorized_representative, authorized_representative: { city: @authorized_representative.city, corporate_personnel_id: @authorized_representative.corporate_personnel_id, country: @authorized_representative.country, dob: @authorized_representative.dob, full_legal_name: @authorized_representative.full_legal_name, occupation: @authorized_representative.occupation, state: @authorized_representative.state, street_address: @authorized_representative.street_address, title: @authorized_representative.title, zip_code: @authorized_representative.zip_code }
    assert_redirected_to authorized_representative_path(assigns(:authorized_representative))
  end

  test "should destroy authorized_representative" do
    assert_difference('AuthorizedRepresentative.count', -1) do
      delete :destroy, id: @authorized_representative
    end

    assert_redirected_to authorized_representatives_path
  end
end
