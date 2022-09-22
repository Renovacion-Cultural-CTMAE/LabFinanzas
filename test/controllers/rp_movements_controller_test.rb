require "test_helper"

class RpMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rp_movement = rp_movements(:one)
  end

  test "should get index" do
    get rp_movements_url
    assert_response :success
  end

  test "should get new" do
    get new_rp_movement_url
    assert_response :success
  end

  test "should create rp_movement" do
    assert_difference("RpMovement.count") do
      post rp_movements_url, params: { rp_movement: { concepto_movimiento_cdp: @rp_movement.concepto_movimiento_cdp, fecha_movimiento_rp: @rp_movement.fecha_movimiento_rp, identificacion_rubro: @rp_movement.identificacion_rubro, identificacion_rubro_interno: @rp_movement.identificacion_rubro_interno, numero_rp: @rp_movement.numero_rp, saldo_rp: @rp_movement.saldo_rp, valor_movimiento_rp: @rp_movement.valor_movimiento_rp } }
    end

    assert_redirected_to rp_movement_url(RpMovement.last)
  end

  test "should show rp_movement" do
    get rp_movement_url(@rp_movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_rp_movement_url(@rp_movement)
    assert_response :success
  end

  test "should update rp_movement" do
    patch rp_movement_url(@rp_movement), params: { rp_movement: { concepto_movimiento_cdp: @rp_movement.concepto_movimiento_cdp, fecha_movimiento_rp: @rp_movement.fecha_movimiento_rp, identificacion_rubro: @rp_movement.identificacion_rubro, identificacion_rubro_interno: @rp_movement.identificacion_rubro_interno, numero_rp: @rp_movement.numero_rp, saldo_rp: @rp_movement.saldo_rp, valor_movimiento_rp: @rp_movement.valor_movimiento_rp } }
    assert_redirected_to rp_movement_url(@rp_movement)
  end

  test "should destroy rp_movement" do
    assert_difference("RpMovement.count", -1) do
      delete rp_movement_url(@rp_movement)
    end

    assert_redirected_to rp_movements_url
  end
end
