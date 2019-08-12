require "application_system_test_case"

class CultureAdditionsTest < ApplicationSystemTestCase
  setup do
    @culture_addition = culture_additions(:one)
  end

  test "visiting the index" do
    visit culture_additions_url
    assert_selector "h1", text: "Culture Additions"
  end

  test "creating a Culture addition" do
    visit culture_additions_url
    click_on "New Culture Addition"

    fill_in "Amount", with: @culture_addition.amount
    fill_in "Attenuation", with: @culture_addition.attenuation
    fill_in "Cell count billions", with: @culture_addition.cell_count_billions
    fill_in "Culture", with: @culture_addition.culture_id
    fill_in "Duration", with: @culture_addition.duration
    fill_in "Duration unit", with: @culture_addition.duration_unit
    fill_in "Recipe", with: @culture_addition.recipe_id
    fill_in "Time", with: @culture_addition.time
    fill_in "Time unit", with: @culture_addition.time_unit
    click_on "Create Culture addition"

    assert_text "Culture addition was successfully created"
    click_on "Back"
  end

  test "updating a Culture addition" do
    visit culture_additions_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @culture_addition.amount
    fill_in "Attenuation", with: @culture_addition.attenuation
    fill_in "Cell count billions", with: @culture_addition.cell_count_billions
    fill_in "Culture", with: @culture_addition.culture_id
    fill_in "Duration", with: @culture_addition.duration
    fill_in "Duration unit", with: @culture_addition.duration_unit
    fill_in "Recipe", with: @culture_addition.recipe_id
    fill_in "Time", with: @culture_addition.time
    fill_in "Time unit", with: @culture_addition.time_unit
    click_on "Update Culture addition"

    assert_text "Culture addition was successfully updated"
    click_on "Back"
  end

  test "destroying a Culture addition" do
    visit culture_additions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Culture addition was successfully destroyed"
  end
end
