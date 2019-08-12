require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { alcohol_by_volume: @recipe.alcohol_by_volume, author: @recipe.author, batch_size: @recipe.batch_size, carbonation: @recipe.carbonation, coauthor: @recipe.coauthor, color_estimate: @recipe.color_estimate, efficency: @recipe.efficency, final_gravity: @recipe.final_gravity, ibu_estimate: @recipe.ibu_estimate, name: @recipe.name, notes: @recipe.notes, original_gravity: @recipe.original_gravity, style: @recipe.style, type: @recipe.type } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { alcohol_by_volume: @recipe.alcohol_by_volume, author: @recipe.author, batch_size: @recipe.batch_size, carbonation: @recipe.carbonation, coauthor: @recipe.coauthor, color_estimate: @recipe.color_estimate, efficency: @recipe.efficency, final_gravity: @recipe.final_gravity, ibu_estimate: @recipe.ibu_estimate, name: @recipe.name, notes: @recipe.notes, original_gravity: @recipe.original_gravity, style: @recipe.style, type: @recipe.type } }
    assert_redirected_to recipe_url(@recipe)
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end
