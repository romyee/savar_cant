require 'test_helper'

class AppliedVehicleDetailsControllerTest < ActionController::TestCase
  setup do
    @applied_vehicle_detail = applied_vehicle_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applied_vehicle_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applied_vehicle_detail" do
    assert_difference('AppliedVehicleDetail.count') do
      post :create, applied_vehicle_detail: { quantity: @applied_vehicle_detail.quantity }
    end

    assert_redirected_to applied_vehicle_detail_path(assigns(:applied_vehicle_detail))
  end

  test "should show applied_vehicle_detail" do
    get :show, id: @applied_vehicle_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applied_vehicle_detail
    assert_response :success
  end

  test "should update applied_vehicle_detail" do
    put :update, id: @applied_vehicle_detail, applied_vehicle_detail: { quantity: @applied_vehicle_detail.quantity }
    assert_redirected_to applied_vehicle_detail_path(assigns(:applied_vehicle_detail))
  end

  test "should destroy applied_vehicle_detail" do
    assert_difference('AppliedVehicleDetail.count', -1) do
      delete :destroy, id: @applied_vehicle_detail
    end

    assert_redirected_to applied_vehicle_details_path
  end
end
