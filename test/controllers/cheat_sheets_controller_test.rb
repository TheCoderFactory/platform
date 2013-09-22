require 'test_helper'

class CheatSheetsControllerTest < ActionController::TestCase
  setup do
    @cheat_sheet = cheat_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cheat_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cheat_sheet" do
    assert_difference('CheatSheet.count') do
      post :create, cheat_sheet: { gist: @cheat_sheet.gist, icon: @cheat_sheet.icon, name: @cheat_sheet.name }
    end

    assert_redirected_to cheat_sheet_path(assigns(:cheat_sheet))
  end

  test "should show cheat_sheet" do
    get :show, id: @cheat_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cheat_sheet
    assert_response :success
  end

  test "should update cheat_sheet" do
    patch :update, id: @cheat_sheet, cheat_sheet: { gist: @cheat_sheet.gist, icon: @cheat_sheet.icon, name: @cheat_sheet.name }
    assert_redirected_to cheat_sheet_path(assigns(:cheat_sheet))
  end

  test "should destroy cheat_sheet" do
    assert_difference('CheatSheet.count', -1) do
      delete :destroy, id: @cheat_sheet
    end

    assert_redirected_to cheat_sheets_path
  end
end
