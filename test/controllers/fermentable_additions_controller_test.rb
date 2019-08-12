require 'test_helper'

class FermentableAdditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fermentable_addition = fermentable_additions(:one)
  end

  test "should get index" do
    get fermentable_additions_url
    assert_response :success
  end

  test "should get new" do
    get new_fermentable_addition_url
    assert_response :success
  end

  test "should create fermentable_addition" do
    assert_difference('FermentableAddition.count') do
      post fermentable_additions_url, params: { fermentable_addition: { amount: @fermentable_addition.amount, duration: @fermentable_addition.duration, duration_unit: @fermentable_addition.duration_unit, fermentable_id: @fermentable_addition.fermentable_id, recipe_id: @fermentable_addition.recipe_id, specific_gravity: @fermentable_addition.specific_gravity, step: @fermentable_addition.step, time: @fermentable_addition.time, time_unit: @fermentable_addition.time_unit, use: @fermentable_addition.use } }
    end

    assert_redirected_to fermentable_addition_url(FermentableAddition.last)
  end

  test "should show fermentable_addition" do
    get fermentable_addition_url(@fermentable_addition)
    assert_response :success
  end

  test "should get edit" do
    get edit_fermentable_addition_url(@fermentable_addition)
    assert_response :success
  end

  test "should update fermentable_addition" do
    patch fermentable_addition_url(@fermentable_addition), params: { fermentable_addition: { amount: @fermentable_addition.amount, duration: @fermentable_addition.duration, duration_unit: @fermentable_addition.duration_unit, fermentable_id: @fermentable_addition.fermentable_id, recipe_id: @fermentable_addition.recipe_id, specific_gravity: @fermentable_addition.specific_gravity, step: @fermentable_addition.step, time: @fermentable_addition.time, time_unit: @fermentable_addition.time_unit, use: @fermentable_addition.use } }
    assert_redirected_to fermentable_addition_url(@fermentable_addition)
  end

  test "should destroy fermentable_addition" do
    assert_difference('FermentableAddition.count', -1) do
      delete fermentable_addition_url(@fermentable_addition)
    end

    assert_redirected_to fermentable_additions_url
  end
end
