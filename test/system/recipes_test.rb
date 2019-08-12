require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "creating a Recipe" do
    visit recipes_url
    click_on "New Recipe"

    fill_in "Alcohol by volume", with: @recipe.alcohol_by_volume
    fill_in "Author", with: @recipe.author
    fill_in "Batch size", with: @recipe.batch_size
    fill_in "Carbonation", with: @recipe.carbonation
    fill_in "Coauthor", with: @recipe.coauthor
    fill_in "Color estimate", with: @recipe.color_estimate
    fill_in "Efficency", with: @recipe.efficency
    fill_in "Final gravity", with: @recipe.final_gravity
    fill_in "Ibu estimate", with: @recipe.ibu_estimate
    fill_in "Name", with: @recipe.name
    fill_in "Notes", with: @recipe.notes
    fill_in "Original gravity", with: @recipe.original_gravity
    fill_in "Style", with: @recipe.style
    fill_in "Type", with: @recipe.type
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "updating a Recipe" do
    visit recipes_url
    click_on "Edit", match: :first

    fill_in "Alcohol by volume", with: @recipe.alcohol_by_volume
    fill_in "Author", with: @recipe.author
    fill_in "Batch size", with: @recipe.batch_size
    fill_in "Carbonation", with: @recipe.carbonation
    fill_in "Coauthor", with: @recipe.coauthor
    fill_in "Color estimate", with: @recipe.color_estimate
    fill_in "Efficency", with: @recipe.efficency
    fill_in "Final gravity", with: @recipe.final_gravity
    fill_in "Ibu estimate", with: @recipe.ibu_estimate
    fill_in "Name", with: @recipe.name
    fill_in "Notes", with: @recipe.notes
    fill_in "Original gravity", with: @recipe.original_gravity
    fill_in "Style", with: @recipe.style
    fill_in "Type", with: @recipe.type
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe was successfully destroyed"
  end
end
