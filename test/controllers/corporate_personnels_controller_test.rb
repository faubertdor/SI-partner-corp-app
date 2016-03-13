require 'test_helper'

class CorporatePersonnelsControllerTest < ActionController::TestCase
  setup do
    @corporate_personnel = corporate_personnels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corporate_personnels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corporate_personnel" do
    assert_difference('CorporatePersonnel.count') do
      post :create, corporate_personnel: {  }
    end

    assert_redirected_to corporate_personnel_path(assigns(:corporate_personnel))
  end

  test "should show corporate_personnel" do
    get :show, id: @corporate_personnel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corporate_personnel
    assert_response :success
  end

  test "should update corporate_personnel" do
    patch :update, id: @corporate_personnel, corporate_personnel: {  }
    assert_redirected_to corporate_personnel_path(assigns(:corporate_personnel))
  end

  test "should destroy corporate_personnel" do
    assert_difference('CorporatePersonnel.count', -1) do
      delete :destroy, id: @corporate_personnel
    end

    assert_redirected_to corporate_personnels_path
  end
end
