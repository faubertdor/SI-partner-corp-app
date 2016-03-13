require 'test_helper'

class PoliticallyExposedPeopleControllerTest < ActionController::TestCase
  setup do
    @politically_exposed_person = politically_exposed_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:politically_exposed_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create politically_exposed_person" do
    assert_difference('PoliticallyExposedPerson.count') do
      post :create, politically_exposed_person: { from: @politically_exposed_person.from, name: @politically_exposed_person.name, position_held: @politically_exposed_person.position_held, title: @politically_exposed_person.title, to: @politically_exposed_person.to, user_id: @politically_exposed_person.user_id }
    end

    assert_redirected_to politically_exposed_person_path(assigns(:politically_exposed_person))
  end

  test "should show politically_exposed_person" do
    get :show, id: @politically_exposed_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @politically_exposed_person
    assert_response :success
  end

  test "should update politically_exposed_person" do
    patch :update, id: @politically_exposed_person, politically_exposed_person: { from: @politically_exposed_person.from, name: @politically_exposed_person.name, position_held: @politically_exposed_person.position_held, title: @politically_exposed_person.title, to: @politically_exposed_person.to, user_id: @politically_exposed_person.user_id }
    assert_redirected_to politically_exposed_person_path(assigns(:politically_exposed_person))
  end

  test "should destroy politically_exposed_person" do
    assert_difference('PoliticallyExposedPerson.count', -1) do
      delete :destroy, id: @politically_exposed_person
    end

    assert_redirected_to politically_exposed_people_path
  end
end
