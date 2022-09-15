require "test_helper"

class RpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rp = rps(:one)
  end

  test "should get index" do
    get rps_url
    assert_response :success
  end

  test "should get new" do
    get new_rp_url
    assert_response :success
  end

  test "should create rp" do
    assert_difference("Rp.count") do
      post rps_url, params: { rp: { concepto_rp: @rp.concepto_rp, identificacion_del_rubro: @rp.identificacion_del_rubro, identificacion_del_rubro_interno: @rp.identificacion_del_rubro_interno, numero_cdp: @rp.numero_cdp, numero_de_rp: @rp.numero_de_rp, tipo_de_movimiento_rp: @rp.tipo_de_movimiento_rp, valor_de_rp: @rp.valor_de_rp, valor_movimiento_rp: @rp.valor_movimiento_rp } }
    end

    assert_redirected_to rp_url(Rp.last)
  end

  test "should show rp" do
    get rp_url(@rp)
    assert_response :success
  end

  test "should get edit" do
    get edit_rp_url(@rp)
    assert_response :success
  end

  test "should update rp" do
    patch rp_url(@rp), params: { rp: { concepto_rp: @rp.concepto_rp, identificacion_del_rubro: @rp.identificacion_del_rubro, identificacion_del_rubro_interno: @rp.identificacion_del_rubro_interno, numero_cdp: @rp.numero_cdp, numero_de_rp: @rp.numero_de_rp, tipo_de_movimiento_rp: @rp.tipo_de_movimiento_rp, valor_de_rp: @rp.valor_de_rp, valor_movimiento_rp: @rp.valor_movimiento_rp } }
    assert_redirected_to rp_url(@rp)
  end

  test "should destroy rp" do
    assert_difference("Rp.count", -1) do
      delete rp_url(@rp)
    end

    assert_redirected_to rps_url
  end
end
