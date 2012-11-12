require 'test_helper'

class QuizDefinitionsControllerTest < ActionController::TestCase
  setup do
    @quiz_definition = quiz_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quiz_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quiz_definition" do
    assert_difference('QuizDefinition.count') do
      post :create, quiz_definition: { difficulty: @quiz_definition.difficulty }
    end

    assert_redirected_to quiz_definition_path(assigns(:quiz_definition))
  end

  test "should show quiz_definition" do
    get :show, id: @quiz_definition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quiz_definition
    assert_response :success
  end

  test "should update quiz_definition" do
    put :update, id: @quiz_definition, quiz_definition: { difficulty: @quiz_definition.difficulty }
    assert_redirected_to quiz_definition_path(assigns(:quiz_definition))
  end

  test "should destroy quiz_definition" do
    assert_difference('QuizDefinition.count', -1) do
      delete :destroy, id: @quiz_definition
    end

    assert_redirected_to quiz_definitions_path
  end
end
