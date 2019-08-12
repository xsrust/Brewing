require "application_system_test_case"

class CulturesTest < ApplicationSystemTestCase
  setup do
    @culture = cultures(:one)
  end

  test "visiting the index" do
    visit cultures_url
    assert_selector "h1", text: "Cultures"
  end

  test "creating a Culture" do
    visit cultures_url
    click_on "New Culture"

    fill_in "Alcohol tolerance", with: @culture.alcohol_tolerance
    fill_in "Attenuation max", with: @culture.attenuation_max
    fill_in "Attenuation min", with: @culture.attenuation_min
    fill_in "Form", with: @culture.form
    fill_in "Name", with: @culture.name
    fill_in "Producer", with: @culture.producer
    fill_in "Product", with: @culture.product_id
    fill_in "Type", with: @culture.type
    click_on "Create Culture"

    assert_text "Culture was successfully created"
    click_on "Back"
  end

  test "updating a Culture" do
    visit cultures_url
    click_on "Edit", match: :first

    fill_in "Alcohol tolerance", with: @culture.alcohol_tolerance
    fill_in "Attenuation max", with: @culture.attenuation_max
    fill_in "Attenuation min", with: @culture.attenuation_min
    fill_in "Form", with: @culture.form
    fill_in "Name", with: @culture.name
    fill_in "Producer", with: @culture.producer
    fill_in "Product", with: @culture.product_id
    fill_in "Type", with: @culture.type
    click_on "Update Culture"

    assert_text "Culture was successfully updated"
    click_on "Back"
  end

  test "destroying a Culture" do
    visit cultures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Culture was successfully destroyed"
  end
end
