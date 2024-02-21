require "application_system_test_case"

class BefakepostsTest < ApplicationSystemTestCase
  setup do
    @befakepost = befakeposts(:one)
  end

  test "visiting the index" do
    visit befakeposts_url
    assert_selector "h1", text: "Befakeposts"
  end

  test "should create befakepost" do
    visit befakeposts_url
    click_on "New befakepost"

    fill_in "Back picture", with: @befakepost.back_picture
    fill_in "Description", with: @befakepost.description
    fill_in "Front picture", with: @befakepost.front_picture
    fill_in "Location", with: @befakepost.location
    fill_in "Profile picture", with: @befakepost.profile_picture
    fill_in "Username", with: @befakepost.username
    click_on "Create Befakepost"

    assert_text "Befakepost was successfully created"
    click_on "Back"
  end

  test "should update Befakepost" do
    visit befakepost_url(@befakepost)
    click_on "Edit this befakepost", match: :first

    fill_in "Back picture", with: @befakepost.back_picture
    fill_in "Description", with: @befakepost.description
    fill_in "Front picture", with: @befakepost.front_picture
    fill_in "Location", with: @befakepost.location
    fill_in "Profile picture", with: @befakepost.profile_picture
    fill_in "Username", with: @befakepost.username
    click_on "Update Befakepost"

    assert_text "Befakepost was successfully updated"
    click_on "Back"
  end

  test "should destroy Befakepost" do
    visit befakepost_url(@befakepost)
    click_on "Destroy this befakepost", match: :first

    assert_text "Befakepost was successfully destroyed"
  end
end
