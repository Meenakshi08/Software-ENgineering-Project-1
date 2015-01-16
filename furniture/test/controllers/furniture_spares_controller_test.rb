require 'test_helper'

class FurnitureSparesControllerTest < ActionController::TestCase
  setup do
    @furniture_spare = furniture_spares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:furniture_spares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create furniture_spare" do
    assert_difference('FurnitureSpare.count') do
      post :create, furniture_spare: { Color: @furniture_spare.Color, Description: @furniture_spare.Description, Manufacturer: @furniture_spare.Manufacturer, Material: @furniture_spare.Material, Price: @furniture_spare.Price, QuantityAvailable: @furniture_spare.QuantityAvailable, SparePartID: @furniture_spare.SparePartID, SparePartName: @furniture_spare.SparePartName }
    end

    assert_redirected_to furniture_spare_path(assigns(:furniture_spare))
  end

  test "should show furniture_spare" do
    get :show, id: @furniture_spare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @furniture_spare
    assert_response :success
  end

  test "should update furniture_spare" do
    patch :update, id: @furniture_spare, furniture_spare: { Color: @furniture_spare.Color, Description: @furniture_spare.Description, Manufacturer: @furniture_spare.Manufacturer, Material: @furniture_spare.Material, Price: @furniture_spare.Price, QuantityAvailable: @furniture_spare.QuantityAvailable, SparePartID: @furniture_spare.SparePartID, SparePartName: @furniture_spare.SparePartName }
    assert_redirected_to furniture_spare_path(assigns(:furniture_spare))
  end

  test "should destroy furniture_spare" do
    assert_difference('FurnitureSpare.count', -1) do
      delete :destroy, id: @furniture_spare
    end

    assert_redirected_to furniture_spares_path
  end
end
