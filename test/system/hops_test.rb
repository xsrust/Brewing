require "application_system_test_case"

class HopsTest < ApplicationSystemTestCase
  setup do
    @hop = hops(:one)
  end

  test "visiting the index" do
    visit hops_url
    assert_selector "h1", text: "Hops"
  end

  test "creating a Hop" do
    visit hops_url
    click_on "New Hop"

    fill_in "Alpha acid", with: @hop.alpha_acid
    fill_in "Beta acid", with: @hop.beta_acid
    fill_in "Form", with: @hop.form
    fill_in "Name", with: @hop.name
    fill_in "Origin", with: @hop.origin
    fill_in "Producer", with: @hop.producer
    fill_in "Type", with: @hop.type
    fill_in "Year", with: @hop.year
    click_on "Create Hop"

    assert_text "Hop was successfully created"
    click_on "Back"
  end

  test "updating a Hop" do
    visit hops_url
    click_on "Edit", match: :first

    fill_in "Alpha acid", with: @hop.alpha_acid
    fill_in "Beta acid", with: @hop.beta_acid
    fill_in "Form", with: @hop.form
    fill_in "Name", with: @hop.name
    fill_in "Origin", with: @hop.origin
    fill_in "Producer", with: @hop.producer
    fill_in "Type", with: @hop.type
    fill_in "Year", with: @hop.year
    click_on "Update Hop"

    assert_text "Hop was successfully updated"
    click_on "Back"
  end

  test "destroying a Hop" do
    visit hops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hop was successfully destroyed"
  end
end
