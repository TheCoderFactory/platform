require 'test_helper'

class QuicklinksControllerTest < ActionController::TestCase
  setup do
    @quicklink = quicklinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quicklinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quicklink" do
    assert_difference('Quicklink.count') do
      post :create, quicklink: { active: @quicklink.active, icon: @quicklink.icon, important: @quicklink.important, name: @quicklink.name, url: @quicklink.url }
    end

    assert_redirected_to quicklink_path(assigns(:quicklink))
  end

  test "should show quicklink" do
    get :show, id: @quicklink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quicklink
    assert_response :success
  end

  test "should update quicklink" do
    patch :update, id: @quicklink, quicklink: { active: @quicklink.active, icon: @quicklink.icon, important: @quicklink.important, name: @quicklink.name, url: @quicklink.url }
    assert_redirected_to quicklink_path(assigns(:quicklink))
  end

  test "should destroy quicklink" do
    assert_difference('Quicklink.count', -1) do
      delete :destroy, id: @quicklink
    end

    assert_redirected_to quicklinks_path
  end
end
