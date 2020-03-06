require "application_system_test_case"

class FermentablesTest < ApplicationSystemTestCase
  setup do
    @fermentable = fermentables(:one)
  end

  test "visiting the index" do
    visit fermentables_url
    assert_selector "h1", text: "Fermentables"
  end

  test "creating a Fermentable" do
    visit fermentables_url
    click_on "New Fermentable"

    fill_in "Color", with: @fermentable.color
    fill_in "Grain group", with: @fermentable.grain_group
    fill_in "Name", with: @fermentable.name
    fill_in "Potential", with: @fermentable.potential
    fill_in "Type", with: @fermentable.type
    click_on "Create Fermentable"

    assert_text "Fermentable was successfully created"
    click_on "Back"
  end

  test "updating a Fermentable" do
    visit fermentables_url
    click_on "Edit", match: :first

    fill_in "Color", with: @fermentable.color
    fill_in "Grain group", with: @fermentable.grain_group
    fill_in "Name", with: @fermentable.name
    fill_in "Potential", with: @fermentable.potential
    fill_in "Type", with: @fermentable.type
    click_on "Update Fermentable"

    assert_text "Fermentable was successfully updated"
    click_on "Back"
  end

  test "destroying a Fermentable" do
    visit fermentables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fermentable was successfully destroyed"
  end
end
