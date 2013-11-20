require 'test_helper'

class UserProblemsControllerTest < ActionController::TestCase
  setup do
    @user_problem = user_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_problem" do
    assert_difference('UserProblem.count') do
      post :create, user_problem: { problem_id: @user_problem.problem_id, user_id: @user_problem.user_id }
    end

    assert_redirected_to user_problem_path(assigns(:user_problem))
  end

  test "should show user_problem" do
    get :show, id: @user_problem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_problem
    assert_response :success
  end

  test "should update user_problem" do
    patch :update, id: @user_problem, user_problem: { problem_id: @user_problem.problem_id, user_id: @user_problem.user_id }
    assert_redirected_to user_problem_path(assigns(:user_problem))
  end

  test "should destroy user_problem" do
    assert_difference('UserProblem.count', -1) do
      delete :destroy, id: @user_problem
    end

    assert_redirected_to user_problems_path
  end
end
