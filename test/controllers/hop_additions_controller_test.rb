require 'test_helper'

class HopAdditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hop_addition = hop_additions(:one)
  end

  test "should get index" do
    get hop_additions_url
    assert_response :success
  end

  test "should get new" do
    get new_hop_addition_url
    assert_response :success
  end

  test "should create hop_addition" do
    assert_difference('HopAddition.count') do
      post hop_additions_url, params: { hop_addition: { amount: @hop_addition.amount, duration: @hop_addition.duration, duration_unit: @hop_addition.duration_unit, hop_id: @hop_addition.hop_id, recipe_id: @hop_addition.recipe_id, time: @hop_addition.time, time_unit: @hop_addition.time_unit } }
    end

    assert_redirected_to hop_addition_url(HopAddition.last)
  end

  test "should show hop_addition" do
    get hop_addition_url(@hop_addition)
    assert_response :success
  end

  test "should get edit" do
    get edit_hop_addition_url(@hop_addition)
    assert_response :success
  end

  test "should update hop_addition" do
    patch hop_addition_url(@hop_addition), params: { hop_addition: { amount: @hop_addition.amount, duration: @hop_addition.duration, duration_unit: @hop_addition.duration_unit, hop_id: @hop_addition.hop_id, recipe_id: @hop_addition.recipe_id, time: @hop_addition.time, time_unit: @hop_addition.time_unit } }
    assert_redirected_to hop_addition_url(@hop_addition)
  end

  test "should destroy hop_addition" do
    assert_difference('HopAddition.count', -1) do
      delete hop_addition_url(@hop_addition)
    end

    assert_redirected_to hop_additions_url
  end
end
