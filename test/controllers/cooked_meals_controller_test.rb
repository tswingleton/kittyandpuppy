require 'test_helper'

class CookedMealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cooked_meal = cooked_meals(:one)
  end

  test "should get index" do
    get cooked_meals_url
    assert_response :success
  end

  test "should get new" do
    get new_cooked_meal_url
    assert_response :success
  end

  test "should create cooked_meal" do
    assert_difference('CookedMeal.count') do
      post cooked_meals_url, params: { cooked_meal: { Name: @cooked_meal.Name, Recipe: @cooked_meal.Recipe } }
    end

    assert_redirected_to cooked_meal_url(CookedMeal.last)
  end

  test "should show cooked_meal" do
    get cooked_meal_url(@cooked_meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_cooked_meal_url(@cooked_meal)
    assert_response :success
  end

  test "should update cooked_meal" do
    patch cooked_meal_url(@cooked_meal), params: { cooked_meal: { Name: @cooked_meal.Name, Recipe: @cooked_meal.Recipe } }
    assert_redirected_to cooked_meal_url(@cooked_meal)
  end

  test "should destroy cooked_meal" do
    assert_difference('CookedMeal.count', -1) do
      delete cooked_meal_url(@cooked_meal)
    end

    assert_redirected_to cooked_meals_url
  end
end
