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
      post users_url, params: { user: { address1: @user.address1, address2: @user.address2, birthdate: @user.birthdate, city: @user.city, country: @user.country, gender: @user.gender, name: @user.name, phone: @user.phone, purchases: @user.purchases, rank: @user.rank, role: @user.role, sales: @user.sales, state: @user.state, username: @user.username, zipcode: @user.zipcode } }
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
    patch user_url(@user), params: { user: { address1: @user.address1, address2: @user.address2, birthdate: @user.birthdate, city: @user.city, country: @user.country, gender: @user.gender, name: @user.name, phone: @user.phone, purchases: @user.purchases, rank: @user.rank, role: @user.role, sales: @user.sales, state: @user.state, username: @user.username, zipcode: @user.zipcode } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
