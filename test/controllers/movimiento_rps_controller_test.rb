require "test_helper"

class MovimientoRpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimiento_rp = movimiento_rps(:one)
  end

  test "should get index" do
    get movimiento_rps_url
    assert_response :success
  end

  test "should get new" do
    get new_movimiento_rp_url
    assert_response :success
  end

  test "should create movimiento_rp" do
    assert_difference("MovimientoRp.count") do
      post movimiento_rps_url, params: { movimiento_rp: { concepto_movimiento_cdp: @movimiento_rp.concepto_movimiento_cdp, fecha_del_movimiento_rp: @movimiento_rp.fecha_del_movimiento_rp, identificacion_rubro: @movimiento_rp.identificacion_rubro, identificacion_rubro_interno: @movimiento_rp.identificacion_rubro_interno, numero_rp: @movimiento_rp.numero_rp, saldo_rp: @movimiento_rp.saldo_rp, valor_movimento_rp: @movimiento_rp.valor_movimento_rp } }
    end

    assert_redirected_to movimiento_rp_url(MovimientoRp.last)
  end

  test "should show movimiento_rp" do
    get movimiento_rp_url(@movimiento_rp)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimiento_rp_url(@movimiento_rp)
    assert_response :success
  end

  test "should update movimiento_rp" do
    patch movimiento_rp_url(@movimiento_rp), params: { movimiento_rp: { concepto_movimiento_cdp: @movimiento_rp.concepto_movimiento_cdp, fecha_del_movimiento_rp: @movimiento_rp.fecha_del_movimiento_rp, identificacion_rubro: @movimiento_rp.identificacion_rubro, identificacion_rubro_interno: @movimiento_rp.identificacion_rubro_interno, numero_rp: @movimiento_rp.numero_rp, saldo_rp: @movimiento_rp.saldo_rp, valor_movimento_rp: @movimiento_rp.valor_movimento_rp } }
    assert_redirected_to movimiento_rp_url(@movimiento_rp)
  end

  test "should destroy movimiento_rp" do
    assert_difference("MovimientoRp.count", -1) do
      delete movimiento_rp_url(@movimiento_rp)
    end

    assert_redirected_to movimiento_rps_url
  end
end
