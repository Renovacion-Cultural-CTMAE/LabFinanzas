require "application_system_test_case"

class MovementItemsTest < ApplicationSystemTestCase
  setup do
    @movement_item = movement_items(:one)
  end

  test "visiting the index" do
    visit movement_items_url
    assert_selector "h1", text: "Movement items"
  end

  test "should create movement item" do
    visit movement_items_url
    click_on "New movement item"

    fill_in "Codigo dependencia", with: @movement_item.codigo_dependencia
    fill_in "Codigo resolucion", with: @movement_item.codigo_resolucion
    fill_in "Fecha resolucion", with: @movement_item.fecha_resolucion
    fill_in "Identificacion rubro", with: @movement_item.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @movement_item.identificacion_rubro_interno
    fill_in "Observacion resolucion", with: @movement_item.observacion_resolucion
    fill_in "Presupuesto inicial", with: @movement_item.presupuesto_inicial
    fill_in "Tipo movimiento", with: @movement_item.tipo_movimiento
    fill_in "Valor movimiento", with: @movement_item.valor_movimiento
    click_on "Create Movement item"

    assert_text "Movement item was successfully created"
    click_on "Back"
  end

  test "should update Movement item" do
    visit movement_item_url(@movement_item)
    click_on "Edit this movement item", match: :first

    fill_in "Codigo dependencia", with: @movement_item.codigo_dependencia
    fill_in "Codigo resolucion", with: @movement_item.codigo_resolucion
    fill_in "Fecha resolucion", with: @movement_item.fecha_resolucion
    fill_in "Identificacion rubro", with: @movement_item.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @movement_item.identificacion_rubro_interno
    fill_in "Observacion resolucion", with: @movement_item.observacion_resolucion
    fill_in "Presupuesto inicial", with: @movement_item.presupuesto_inicial
    fill_in "Tipo movimiento", with: @movement_item.tipo_movimiento
    fill_in "Valor movimiento", with: @movement_item.valor_movimiento
    click_on "Update Movement item"

    assert_text "Movement item was successfully updated"
    click_on "Back"
  end

  test "should destroy Movement item" do
    visit movement_item_url(@movement_item)
    click_on "Destroy this movement item", match: :first

    assert_text "Movement item was successfully destroyed"
  end
end
