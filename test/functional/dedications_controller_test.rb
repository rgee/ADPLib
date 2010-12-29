require 'test_helper'

class DedicationsControllerTest < ActionController::TestCase
  setup do
    @dedication = dedications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dedications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dedication" do
    assert_difference('Dedication.count') do
      post :create, :dedication => @dedication.attributes
    end

    assert_redirected_to dedication_path(assigns(:dedication))
  end

  test "should show dedication" do
    get :show, :id => @dedication.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dedication.to_param
    assert_response :success
  end

  test "should update dedication" do
    put :update, :id => @dedication.to_param, :dedication => @dedication.attributes
    assert_redirected_to dedication_path(assigns(:dedication))
  end

  test "should destroy dedication" do
    assert_difference('Dedication.count', -1) do
      delete :destroy, :id => @dedication.to_param
    end

    assert_redirected_to dedications_path
  end
end
