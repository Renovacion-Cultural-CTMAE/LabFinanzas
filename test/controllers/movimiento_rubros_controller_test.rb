require "test_helper"

class MovimientoRubrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimiento_rubro = movimiento_rubros(:one)
  end

  test "should get index" do
    get movimiento_rubros_url
    assert_response :success
  end

  test "should get new" do
    get new_movimiento_rubro_url
    assert_response :success
  end

  test "should create movimiento_rubro" do
    assert_difference("MovimientoRubro.count") do
      post movimiento_rubros_url, params: { movimiento_rubro: { codigo_dependencia: @movimiento_rubro.codigo_dependencia, codigo_resolucion: @movimiento_rubro.codigo_resolucion, fecha_resolucion: @movimiento_rubro.fecha_resolucion, identificacion_rubro: @movimiento_rubro.identificacion_rubro, identificacion_rubro_interno: @movimiento_rubro.identificacion_rubro_interno, observacion_resolucion: @movimiento_rubro.observacion_resolucion, presupuesto_inicial: @movimiento_rubro.presupuesto_inicial, tipo_movimiento: @movimiento_rubro.tipo_movimiento, valor_movimiento: @movimiento_rubro.valor_movimiento } }
    end

    assert_redirected_to movimiento_rubro_url(MovimientoRubro.last)
  end

  test "should show movimiento_rubro" do
    get movimiento_rubro_url(@movimiento_rubro)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimiento_rubro_url(@movimiento_rubro)
    assert_response :success
  end

  test "should update movimiento_rubro" do
    patch movimiento_rubro_url(@movimiento_rubro), params: { movimiento_rubro: { codigo_dependencia: @movimiento_rubro.codigo_dependencia, codigo_resolucion: @movimiento_rubro.codigo_resolucion, fecha_resolucion: @movimiento_rubro.fecha_resolucion, identificacion_rubro: @movimiento_rubro.identificacion_rubro, identificacion_rubro_interno: @movimiento_rubro.identificacion_rubro_interno, observacion_resolucion: @movimiento_rubro.observacion_resolucion, presupuesto_inicial: @movimiento_rubro.presupuesto_inicial, tipo_movimiento: @movimiento_rubro.tipo_movimiento, valor_movimiento: @movimiento_rubro.valor_movimiento } }
    assert_redirected_to movimiento_rubro_url(@movimiento_rubro)
  end

  test "should destroy movimiento_rubro" do
    assert_difference("MovimientoRubro.count", -1) do
      delete movimiento_rubro_url(@movimiento_rubro)
    end

    assert_redirected_to movimiento_rubros_url
  end
end
