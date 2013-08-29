require 'test_helper'

class UserProfilesControllerTest < ActionController::TestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_profile" do
    assert_difference('UserProfile.count') do
      post :create, user_profile: { background: @user_profile.background, facebook: @user_profile.facebook, github: @user_profile.github, hobbies: @user_profile.hobbies, linkedin: @user_profile.linkedin, nickname: @user_profile.nickname, phone: @user_profile.phone, picture: @user_profile.picture, slug: @user_profile.slug, twitter: @user_profile.twitter, user_id: @user_profile.user_id, website: @user_profile.website }
    end

    assert_redirected_to user_profile_path(assigns(:user_profile))
  end

  test "should show user_profile" do
    get :show, id: @user_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_profile
    assert_response :success
  end

  test "should update user_profile" do
    patch :update, id: @user_profile, user_profile: { background: @user_profile.background, facebook: @user_profile.facebook, github: @user_profile.github, hobbies: @user_profile.hobbies, linkedin: @user_profile.linkedin, nickname: @user_profile.nickname, phone: @user_profile.phone, picture: @user_profile.picture, slug: @user_profile.slug, twitter: @user_profile.twitter, user_id: @user_profile.user_id, website: @user_profile.website }
    assert_redirected_to user_profile_path(assigns(:user_profile))
  end

  test "should destroy user_profile" do
    assert_difference('UserProfile.count', -1) do
      delete :destroy, id: @user_profile
    end

    assert_redirected_to user_profiles_path
  end
end
