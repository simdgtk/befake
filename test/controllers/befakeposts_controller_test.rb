require "test_helper"

class BefakepostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @befakepost = befakeposts(:one)
  end

  test "should get index" do
    get befakeposts_url
    assert_response :success
  end

  test "should get new" do
    get new_befakepost_url
    assert_response :success
  end

  test "should create befakepost" do
    assert_difference("Befakepost.count") do
      post befakeposts_url, params: { befakepost: { back_picture: @befakepost.back_picture, description: @befakepost.description, front_picture: @befakepost.front_picture, location: @befakepost.location, profile_picture: @befakepost.profile_picture, username: @befakepost.username } }
    end

    assert_redirected_to befakepost_url(Befakepost.last)
  end

  test "should show befakepost" do
    get befakepost_url(@befakepost)
    assert_response :success
  end

  test "should get edit" do
    get edit_befakepost_url(@befakepost)
    assert_response :success
  end

  test "should update befakepost" do
    patch befakepost_url(@befakepost), params: { befakepost: { back_picture: @befakepost.back_picture, description: @befakepost.description, front_picture: @befakepost.front_picture, location: @befakepost.location, profile_picture: @befakepost.profile_picture, username: @befakepost.username } }
    assert_redirected_to befakepost_url(@befakepost)
  end

  test "should destroy befakepost" do
    assert_difference("Befakepost.count", -1) do
      delete befakepost_url(@befakepost)
    end

    assert_redirected_to befakeposts_url
  end
end
