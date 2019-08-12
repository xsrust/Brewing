require "application_system_test_case"

class HopAdditionsTest < ApplicationSystemTestCase
  setup do
    @hop_addition = hop_additions(:one)
  end

  test "visiting the index" do
    visit hop_additions_url
    assert_selector "h1", text: "Hop Additions"
  end

  test "creating a Hop addition" do
    visit hop_additions_url
    click_on "New Hop Addition"

    fill_in "Amount", with: @hop_addition.amount
    fill_in "Duration", with: @hop_addition.duration
    fill_in "Duration unit", with: @hop_addition.duration_unit
    fill_in "Hop", with: @hop_addition.hop_id
    fill_in "Recipe", with: @hop_addition.recipe_id
    fill_in "Time", with: @hop_addition.time
    fill_in "Time unit", with: @hop_addition.time_unit
    click_on "Create Hop addition"

    assert_text "Hop addition was successfully created"
    click_on "Back"
  end

  test "updating a Hop addition" do
    visit hop_additions_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @hop_addition.amount
    fill_in "Duration", with: @hop_addition.duration
    fill_in "Duration unit", with: @hop_addition.duration_unit
    fill_in "Hop", with: @hop_addition.hop_id
    fill_in "Recipe", with: @hop_addition.recipe_id
    fill_in "Time", with: @hop_addition.time
    fill_in "Time unit", with: @hop_addition.time_unit
    click_on "Update Hop addition"

    assert_text "Hop addition was successfully updated"
    click_on "Back"
  end

  test "destroying a Hop addition" do
    visit hop_additions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hop addition was successfully destroyed"
  end
end
