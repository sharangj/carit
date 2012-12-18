require 'test_helper'

class Profile1sControllerTest < ActionController::TestCase
  setup do
    @profile1 = profile1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile1" do
    assert_difference('Profile1.count') do
      post :create, profile1: { birthdate: @profile1.birthdate, dislikes: @profile1.dislikes, gender: @profile1.gender, hobbies: @profile1.hobbies, likes: @profile1.likes, name: @profile1.name, nationality: @profile1.nationality, phonenumber: @profile1.phonenumber, profession: @profile1.profession }
    end

    assert_redirected_to profile1_path(assigns(:profile1))
  end

  test "should show profile1" do
    get :show, id: @profile1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile1
    assert_response :success
  end

  test "should update profile1" do
    put :update, id: @profile1, profile1: { birthdate: @profile1.birthdate, dislikes: @profile1.dislikes, gender: @profile1.gender, hobbies: @profile1.hobbies, likes: @profile1.likes, name: @profile1.name, nationality: @profile1.nationality, phonenumber: @profile1.phonenumber, profession: @profile1.profession }
    assert_redirected_to profile1_path(assigns(:profile1))
  end

  test "should destroy profile1" do
    assert_difference('Profile1.count', -1) do
      delete :destroy, id: @profile1
    end

    assert_redirected_to profile1s_path
  end
end
