require 'test_helper'

class ShipsControllerTest < ActionController::TestCase
  setup do
    @ship = ships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ship" do
    assert_difference('Ship.count') do
      post :create, :ship => { :load_capacity => @ship.load_capacity, :ship_make => @ship.ship_make, :ship_model => @ship.ship_model, :ship_model_year => @ship.ship_model_year, :shipping_line_id => @ship.shipping_line_id, :volume_capacity => @ship.volume_capacity }
    end

    assert_redirected_to ship_path(assigns(:ship))
  end

  test "should show ship" do
    get :show, :id => @ship
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ship
    assert_response :success
  end

  test "should update ship" do
    put :update, :id => @ship, :ship => { :load_capacity => @ship.load_capacity, :ship_make => @ship.ship_make, :ship_model => @ship.ship_model, :ship_model_year => @ship.ship_model_year, :shipping_line_id => @ship.shipping_line_id, :volume_capacity => @ship.volume_capacity }
    assert_redirected_to ship_path(assigns(:ship))
  end

  test "should destroy ship" do
    assert_difference('Ship.count', -1) do
      delete :destroy, :id => @ship
    end

    assert_redirected_to ships_path
  end
end
