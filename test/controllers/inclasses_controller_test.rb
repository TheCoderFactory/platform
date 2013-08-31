require 'test_helper'

class InclassesControllerTest < ActionController::TestCase
  setup do
    @inclass = inclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inclass" do
    assert_difference('Inclass.count') do
      post :create, inclass: { day: @inclass.day, intro: @inclass.intro, title: @inclass.title, week_id: @inclass.week_id }
    end

    assert_redirected_to inclass_path(assigns(:inclass))
  end

  test "should show inclass" do
    get :show, id: @inclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inclass
    assert_response :success
  end

  test "should update inclass" do
    patch :update, id: @inclass, inclass: { day: @inclass.day, intro: @inclass.intro, title: @inclass.title, week_id: @inclass.week_id }
    assert_redirected_to inclass_path(assigns(:inclass))
  end

  test "should destroy inclass" do
    assert_difference('Inclass.count', -1) do
      delete :destroy, id: @inclass
    end

    assert_redirected_to inclasses_path
  end
end
