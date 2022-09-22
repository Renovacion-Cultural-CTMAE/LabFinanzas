require "test_helper"

class MovementItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movement_item = movement_items(:one)
  end

  test "should get index" do
    get movement_items_url
    assert_response :success
  end

  test "should get new" do
    get new_movement_item_url
    assert_response :success
  end

  test "should create movement_item" do
    assert_difference("MovementItem.count") do
      post movement_items_url, params: { movement_item: { codigo_dependencia: @movement_item.codigo_dependencia, codigo_resolucion: @movement_item.codigo_resolucion, fecha_resolucion: @movement_item.fecha_resolucion, identificacion_rubro: @movement_item.identificacion_rubro, identificacion_rubro_interno: @movement_item.identificacion_rubro_interno, observacion_resolucion: @movement_item.observacion_resolucion, presupuesto_inicial: @movement_item.presupuesto_inicial, tipo_movimiento: @movement_item.tipo_movimiento, valor_movimiento: @movement_item.valor_movimiento } }
    end

    assert_redirected_to movement_item_url(MovementItem.last)
  end

  test "should show movement_item" do
    get movement_item_url(@movement_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_movement_item_url(@movement_item)
    assert_response :success
  end

  test "should update movement_item" do
    patch movement_item_url(@movement_item), params: { movement_item: { codigo_dependencia: @movement_item.codigo_dependencia, codigo_resolucion: @movement_item.codigo_resolucion, fecha_resolucion: @movement_item.fecha_resolucion, identificacion_rubro: @movement_item.identificacion_rubro, identificacion_rubro_interno: @movement_item.identificacion_rubro_interno, observacion_resolucion: @movement_item.observacion_resolucion, presupuesto_inicial: @movement_item.presupuesto_inicial, tipo_movimiento: @movement_item.tipo_movimiento, valor_movimiento: @movement_item.valor_movimiento } }
    assert_redirected_to movement_item_url(@movement_item)
  end

  test "should destroy movement_item" do
    assert_difference("MovementItem.count", -1) do
      delete movement_item_url(@movement_item)
    end

    assert_redirected_to movement_items_url
  end
end
