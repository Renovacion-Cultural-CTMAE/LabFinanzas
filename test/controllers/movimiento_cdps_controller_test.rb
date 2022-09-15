require "test_helper"

class MovimientoCdpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimiento_cdp = movimiento_cdps(:one)
  end

  test "should get index" do
    get movimiento_cdps_url
    assert_response :success
  end

  test "should get new" do
    get new_movimiento_cdp_url
    assert_response :success
  end

  test "should create movimiento_cdp" do
    assert_difference("MovimientoCdp.count") do
      post movimiento_cdps_url, params: { movimiento_cdp: { concepto_de_movimiento_cdp: @movimiento_cdp.concepto_de_movimiento_cdp, fecha_de_movimiento_del_cdp: @movimiento_cdp.fecha_de_movimiento_del_cdp, identificacion_del_rubro: @movimiento_cdp.identificacion_del_rubro, identificacion_del_rubro_interno: @movimiento_cdp.identificacion_del_rubro_interno, numero_de_cdp: @movimiento_cdp.numero_de_cdp, saldo_cdp: @movimiento_cdp.saldo_cdp, valor_movimento_cdp: @movimiento_cdp.valor_movimento_cdp } }
    end

    assert_redirected_to movimiento_cdp_url(MovimientoCdp.last)
  end

  test "should show movimiento_cdp" do
    get movimiento_cdp_url(@movimiento_cdp)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimiento_cdp_url(@movimiento_cdp)
    assert_response :success
  end

  test "should update movimiento_cdp" do
    patch movimiento_cdp_url(@movimiento_cdp), params: { movimiento_cdp: { concepto_de_movimiento_cdp: @movimiento_cdp.concepto_de_movimiento_cdp, fecha_de_movimiento_del_cdp: @movimiento_cdp.fecha_de_movimiento_del_cdp, identificacion_del_rubro: @movimiento_cdp.identificacion_del_rubro, identificacion_del_rubro_interno: @movimiento_cdp.identificacion_del_rubro_interno, numero_de_cdp: @movimiento_cdp.numero_de_cdp, saldo_cdp: @movimiento_cdp.saldo_cdp, valor_movimento_cdp: @movimiento_cdp.valor_movimento_cdp } }
    assert_redirected_to movimiento_cdp_url(@movimiento_cdp)
  end

  test "should destroy movimiento_cdp" do
    assert_difference("MovimientoCdp.count", -1) do
      delete movimiento_cdp_url(@movimiento_cdp)
    end

    assert_redirected_to movimiento_cdps_url
  end
end
