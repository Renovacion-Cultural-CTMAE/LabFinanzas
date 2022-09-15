require "test_helper"

class CdpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdp = cdps(:one)
  end

  test "should get index" do
    get cdps_url
    assert_response :success
  end

  test "should get new" do
    get new_cdp_url
    assert_response :success
  end

  test "should create cdp" do
    assert_difference("Cdp.count") do
      post cdps_url, params: { cdp: { concepto_cdp: @cdp.concepto_cdp, identificacion_del_rubro: @cdp.identificacion_del_rubro, identificacion_del_rubro_interno: @cdp.identificacion_del_rubro_interno, numero_de_cdp: @cdp.numero_de_cdp, tipo_de_movimiento_cdp: @cdp.tipo_de_movimiento_cdp, valor_del_cdp: @cdp.valor_del_cdp, valor_del_movimiento_cdp: @cdp.valor_del_movimiento_cdp } }
    end

    assert_redirected_to cdp_url(Cdp.last)
  end

  test "should show cdp" do
    get cdp_url(@cdp)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdp_url(@cdp)
    assert_response :success
  end

  test "should update cdp" do
    patch cdp_url(@cdp), params: { cdp: { concepto_cdp: @cdp.concepto_cdp, identificacion_del_rubro: @cdp.identificacion_del_rubro, identificacion_del_rubro_interno: @cdp.identificacion_del_rubro_interno, numero_de_cdp: @cdp.numero_de_cdp, tipo_de_movimiento_cdp: @cdp.tipo_de_movimiento_cdp, valor_del_cdp: @cdp.valor_del_cdp, valor_del_movimiento_cdp: @cdp.valor_del_movimiento_cdp } }
    assert_redirected_to cdp_url(@cdp)
  end

  test "should destroy cdp" do
    assert_difference("Cdp.count", -1) do
      delete cdp_url(@cdp)
    end

    assert_redirected_to cdps_url
  end
end
