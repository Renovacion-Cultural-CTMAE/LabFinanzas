require "test_helper"

class CdpMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdp_movement = cdp_movements(:one)
  end

  test "should get index" do
    get cdp_movements_url
    assert_response :success
  end

  test "should get new" do
    get new_cdp_movement_url
    assert_response :success
  end

  test "should create cdp_movement" do
    assert_difference("CdpMovement.count") do
      post cdp_movements_url, params: { cdp_movement: { concepto_movimiento_cdp: @cdp_movement.concepto_movimiento_cdp, fecha_movimiento_cdp: @cdp_movement.fecha_movimiento_cdp, identificacion_rubro: @cdp_movement.identificacion_rubro, identificacion_rubro_interno: @cdp_movement.identificacion_rubro_interno, numero_cdp: @cdp_movement.numero_cdp, saldo_cdp: @cdp_movement.saldo_cdp, valor_movimiento_cdp: @cdp_movement.valor_movimiento_cdp } }
    end

    assert_redirected_to cdp_movement_url(CdpMovement.last)
  end

  test "should show cdp_movement" do
    get cdp_movement_url(@cdp_movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdp_movement_url(@cdp_movement)
    assert_response :success
  end

  test "should update cdp_movement" do
    patch cdp_movement_url(@cdp_movement), params: { cdp_movement: { concepto_movimiento_cdp: @cdp_movement.concepto_movimiento_cdp, fecha_movimiento_cdp: @cdp_movement.fecha_movimiento_cdp, identificacion_rubro: @cdp_movement.identificacion_rubro, identificacion_rubro_interno: @cdp_movement.identificacion_rubro_interno, numero_cdp: @cdp_movement.numero_cdp, saldo_cdp: @cdp_movement.saldo_cdp, valor_movimiento_cdp: @cdp_movement.valor_movimiento_cdp } }
    assert_redirected_to cdp_movement_url(@cdp_movement)
  end

  test "should destroy cdp_movement" do
    assert_difference("CdpMovement.count", -1) do
      delete cdp_movement_url(@cdp_movement)
    end

    assert_redirected_to cdp_movements_url
  end
end
