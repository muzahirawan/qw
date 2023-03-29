require "application_system_test_case"

class HorsesTest < ApplicationSystemTestCase
  setup do
    @horse = horses(:one)
  end

  test "visiting the index" do
    visit horses_url
    assert_selector "h1", text: "Horses"
  end

  test "should create horse" do
    visit horses_url
    click_on "New horse"

    fill_in "Color", with: @horse.color
    fill_in "Date of birth", with: @horse.date_of_birth
    fill_in "Image", with: @horse.image
    fill_in "Name", with: @horse.name
    fill_in "Stable", with: @horse.stable_id
    fill_in "User", with: @horse.user_id
    click_on "Create Horse"

    assert_text "Horse was successfully created"
    click_on "Back"
  end

  test "should update Horse" do
    visit horse_url(@horse)
    click_on "Edit this horse", match: :first

    fill_in "Color", with: @horse.color
    fill_in "Date of birth", with: @horse.date_of_birth
    fill_in "Image", with: @horse.image
    fill_in "Name", with: @horse.name
    fill_in "Stable", with: @horse.stable_id
    fill_in "User", with: @horse.user_id
    click_on "Update Horse"

    assert_text "Horse was successfully updated"
    click_on "Back"
  end

  test "should destroy Horse" do
    visit horse_url(@horse)
    click_on "Destroy this horse", match: :first

    assert_text "Horse was successfully destroyed"
  end
end
