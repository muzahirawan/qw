require "application_system_test_case"

class GroomsTest < ApplicationSystemTestCase
  setup do
    @groom = grooms(:one)
  end

  test "visiting the index" do
    visit grooms_url
    assert_selector "h1", text: "Grooms"
  end

  test "should create groom" do
    visit grooms_url
    click_on "New groom"

    fill_in "Name", with: @groom.name
    fill_in "User", with: @groom.user_id
    click_on "Create Groom"

    assert_text "Groom was successfully created"
    click_on "Back"
  end

  test "should update Groom" do
    visit groom_url(@groom)
    click_on "Edit this groom", match: :first

    fill_in "Name", with: @groom.name
    fill_in "User", with: @groom.user_id
    click_on "Update Groom"

    assert_text "Groom was successfully updated"
    click_on "Back"
  end

  test "should destroy Groom" do
    visit groom_url(@groom)
    click_on "Destroy this groom", match: :first

    assert_text "Groom was successfully destroyed"
  end
end
