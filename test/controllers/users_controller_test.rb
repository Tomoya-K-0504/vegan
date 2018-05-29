require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { age: @user.age, born_in: @user.born_in, career: @user.career, contact: @user.contact, email: @user.email, facebook: @user.facebook, first_name: @user.first_name, job: @user.job, last_name: @user.last_name, living_address: @user.living_address, password_digest: @user.password_digest, principle: @user.principle, role: @user.role, sex: @user.sex, trigger: @user.trigger, twitter: @user.twitter } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { age: @user.age, born_in: @user.born_in, career: @user.career, contact: @user.contact, email: @user.email, facebook: @user.facebook, first_name: @user.first_name, job: @user.job, last_name: @user.last_name, living_address: @user.living_address, password_digest: @user.password_digest, principle: @user.principle, role: @user.role, sex: @user.sex, trigger: @user.trigger, twitter: @user.twitter } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
