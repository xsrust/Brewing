require 'test_helper'

class CultureAdditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @culture_addition = culture_additions(:one)
  end

  test "should get index" do
    get culture_additions_url
    assert_response :success
  end

  test "should get new" do
    get new_culture_addition_url
    assert_response :success
  end

  test "should create culture_addition" do
    assert_difference('CultureAddition.count') do
      post culture_additions_url, params: { culture_addition: { amount: @culture_addition.amount, attenuation: @culture_addition.attenuation, cell_count_billions: @culture_addition.cell_count_billions, culture_id: @culture_addition.culture_id, duration: @culture_addition.duration, duration_unit: @culture_addition.duration_unit, recipe_id: @culture_addition.recipe_id, time: @culture_addition.time, time_unit: @culture_addition.time_unit } }
    end

    assert_redirected_to culture_addition_url(CultureAddition.last)
  end

  test "should show culture_addition" do
    get culture_addition_url(@culture_addition)
    assert_response :success
  end

  test "should get edit" do
    get edit_culture_addition_url(@culture_addition)
    assert_response :success
  end

  test "should update culture_addition" do
    patch culture_addition_url(@culture_addition), params: { culture_addition: { amount: @culture_addition.amount, attenuation: @culture_addition.attenuation, cell_count_billions: @culture_addition.cell_count_billions, culture_id: @culture_addition.culture_id, duration: @culture_addition.duration, duration_unit: @culture_addition.duration_unit, recipe_id: @culture_addition.recipe_id, time: @culture_addition.time, time_unit: @culture_addition.time_unit } }
    assert_redirected_to culture_addition_url(@culture_addition)
  end

  test "should destroy culture_addition" do
    assert_difference('CultureAddition.count', -1) do
      delete culture_addition_url(@culture_addition)
    end

    assert_redirected_to culture_additions_url
  end
end
