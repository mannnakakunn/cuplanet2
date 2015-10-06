require 'test_helper'

class CupnoodlesControllerTest < ActionController::TestCase
  setup do
    @cupnoodle = cupnoodles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cupnoodles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cupnoodle" do
    assert_difference('Cupnoodle.count') do
      post :create, cupnoodle: { comment: @cupnoodle.comment, company: @cupnoodle.company, name: @cupnoodle.name, rank: @cupnoodle.rank }
    end

    assert_redirected_to cupnoodle_path(assigns(:cupnoodle))
  end

  test "should show cupnoodle" do
    get :show, id: @cupnoodle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cupnoodle
    assert_response :success
  end

  test "should update cupnoodle" do
    patch :update, id: @cupnoodle, cupnoodle: { comment: @cupnoodle.comment, company: @cupnoodle.company, name: @cupnoodle.name, rank: @cupnoodle.rank }
    assert_redirected_to cupnoodle_path(assigns(:cupnoodle))
  end

  test "should destroy cupnoodle" do
    assert_difference('Cupnoodle.count', -1) do
      delete :destroy, id: @cupnoodle
    end

    assert_redirected_to cupnoodles_path
  end
end
