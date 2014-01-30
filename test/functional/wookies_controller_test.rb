require 'test_helper'

class WookiesControllerTest < ActionController::TestCase
  setup do
    @wooky = wookies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wookies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wooky" do
    assert_difference('Wookie.count') do
      post :create, wooky: { best_time: @wooky.best_time, name: @wooky.name, odds: @wooky.odds }
    end

    assert_redirected_to wooky_path(assigns(:wooky))
  end

  test "should show wooky" do
    get :show, id: @wooky
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wooky
    assert_response :success
  end

  test "should update wooky" do
    put :update, id: @wooky, wooky: { best_time: @wooky.best_time, name: @wooky.name, odds: @wooky.odds }
    assert_redirected_to wooky_path(assigns(:wooky))
  end

  test "should destroy wooky" do
    assert_difference('Wookie.count', -1) do
      delete :destroy, id: @wooky
    end

    assert_redirected_to wookies_path
  end
end
