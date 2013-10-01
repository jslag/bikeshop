require 'test_helper'

class FrameColorsControllerTest < ActionController::TestCase
  setup do
    @frame_color = frame_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frame_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frame_color" do
    assert_difference('FrameColor.count') do
      post :create, frame_color: { name: @frame_color.name }
    end

    assert_redirected_to frame_color_path(assigns(:frame_color))
  end

  test "should show frame_color" do
    get :show, id: @frame_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frame_color
    assert_response :success
  end

  test "should update frame_color" do
    patch :update, id: @frame_color, frame_color: { name: @frame_color.name }
    assert_redirected_to frame_color_path(assigns(:frame_color))
  end

  test "should destroy frame_color" do
    assert_difference('FrameColor.count', -1) do
      delete :destroy, id: @frame_color
    end

    assert_redirected_to frame_colors_path
  end
end
