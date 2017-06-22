require 'test_helper'

class UserGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_goal = user_goals(:one)
  end

  test "should get index" do
    get user_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_user_goal_url
    assert_response :success
  end

  test "should create user_goal" do
    assert_difference('UserGoal.count') do
      post user_goals_url, params: { user_goal: { current: @user_goal.current, references: @user_goal.references, target: @user_goal.target } }
    end

    assert_redirected_to user_goal_url(UserGoal.last)
  end

  test "should show user_goal" do
    get user_goal_url(@user_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_goal_url(@user_goal)
    assert_response :success
  end

  test "should update user_goal" do
    patch user_goal_url(@user_goal), params: { user_goal: { current: @user_goal.current, references: @user_goal.references, target: @user_goal.target } }
    assert_redirected_to user_goal_url(@user_goal)
  end

  test "should destroy user_goal" do
    assert_difference('UserGoal.count', -1) do
      delete user_goal_url(@user_goal)
    end

    assert_redirected_to user_goals_url
  end
end
