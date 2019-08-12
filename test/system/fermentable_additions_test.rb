require "application_system_test_case"

class FermentableAdditionsTest < ApplicationSystemTestCase
  setup do
    @fermentable_addition = fermentable_additions(:one)
  end

  test "visiting the index" do
    visit fermentable_additions_url
    assert_selector "h1", text: "Fermentable Additions"
  end

  test "creating a Fermentable addition" do
    visit fermentable_additions_url
    click_on "New Fermentable Addition"

    fill_in "Amount", with: @fermentable_addition.amount
    fill_in "Duration", with: @fermentable_addition.duration
    fill_in "Duration unit", with: @fermentable_addition.duration_unit
    fill_in "Fermentable", with: @fermentable_addition.fermentable_id
    fill_in "Recipe", with: @fermentable_addition.recipe_id
    fill_in "Specific gravity", with: @fermentable_addition.specific_gravity
    fill_in "Step", with: @fermentable_addition.step
    fill_in "Time", with: @fermentable_addition.time
    fill_in "Time unit", with: @fermentable_addition.time_unit
    fill_in "Use", with: @fermentable_addition.use
    click_on "Create Fermentable addition"

    assert_text "Fermentable addition was successfully created"
    click_on "Back"
  end

  test "updating a Fermentable addition" do
    visit fermentable_additions_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @fermentable_addition.amount
    fill_in "Duration", with: @fermentable_addition.duration
    fill_in "Duration unit", with: @fermentable_addition.duration_unit
    fill_in "Fermentable", with: @fermentable_addition.fermentable_id
    fill_in "Recipe", with: @fermentable_addition.recipe_id
    fill_in "Specific gravity", with: @fermentable_addition.specific_gravity
    fill_in "Step", with: @fermentable_addition.step
    fill_in "Time", with: @fermentable_addition.time
    fill_in "Time unit", with: @fermentable_addition.time_unit
    fill_in "Use", with: @fermentable_addition.use
    click_on "Update Fermentable addition"

    assert_text "Fermentable addition was successfully updated"
    click_on "Back"
  end

  test "destroying a Fermentable addition" do
    visit fermentable_additions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fermentable addition was successfully destroyed"
  end
end
