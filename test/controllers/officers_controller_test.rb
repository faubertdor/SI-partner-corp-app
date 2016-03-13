require 'test_helper'

class OfficersControllerTest < ActionController::TestCase
  setup do
    @officer = officers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:officers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create officer" do
    assert_difference('Officer.count') do
      post :create, officer: { corporate_personnel_id: @officer.corporate_personnel_id, full_legal_name: @officer.full_legal_name, title: @officer.title }
    end

    assert_redirected_to officer_path(assigns(:officer))
  end

  test "should show officer" do
    get :show, id: @officer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @officer
    assert_response :success
  end

  test "should update officer" do
    patch :update, id: @officer, officer: { corporate_personnel_id: @officer.corporate_personnel_id, full_legal_name: @officer.full_legal_name, title: @officer.title }
    assert_redirected_to officer_path(assigns(:officer))
  end

  test "should destroy officer" do
    assert_difference('Officer.count', -1) do
      delete :destroy, id: @officer
    end

    assert_redirected_to officers_path
  end
end
