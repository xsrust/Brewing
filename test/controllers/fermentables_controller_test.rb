require 'test_helper'

class FermentablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fermentable = fermentables(:one)
  end

  test "should get index" do
    get fermentables_url
    assert_response :success
  end

  test "should get new" do
    get new_fermentable_url
    assert_response :success
  end

  test "should create fermentable" do
    assert_difference('Fermentable.count') do
      post fermentables_url, params: { fermentable: { color: @fermentable.color, grain_group: @fermentable.grain_group, name: @fermentable.name, potential: @fermentable.potential, producer: @fermentable.producer, type: @fermentable.type } }
    end

    assert_redirected_to fermentable_url(Fermentable.last)
  end

  test "should show fermentable" do
    get fermentable_url(@fermentable)
    assert_response :success
  end

  test "should get edit" do
    get edit_fermentable_url(@fermentable)
    assert_response :success
  end

  test "should update fermentable" do
    patch fermentable_url(@fermentable), params: { fermentable: { color: @fermentable.color, grain_group: @fermentable.grain_group, name: @fermentable.name, potential: @fermentable.potential, producer: @fermentable.producer, type: @fermentable.type } }
    assert_redirected_to fermentable_url(@fermentable)
  end

  test "should destroy fermentable" do
    assert_difference('Fermentable.count', -1) do
      delete fermentable_url(@fermentable)
    end

    assert_redirected_to fermentables_url
  end
end
