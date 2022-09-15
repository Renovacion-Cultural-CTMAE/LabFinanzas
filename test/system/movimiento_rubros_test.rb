require "application_system_test_case"

class MovimientoRubrosTest < ApplicationSystemTestCase
  setup do
    @movimiento_rubro = movimiento_rubros(:one)
  end

  test "visiting the index" do
    visit movimiento_rubros_url
    assert_selector "h1", text: "Movimiento rubros"
  end

  test "should create movimiento rubro" do
    visit movimiento_rubros_url
    click_on "New movimiento rubro"

    fill_in "Codigo dependencia", with: @movimiento_rubro.codigo_dependencia
    fill_in "Codigo resolucion", with: @movimiento_rubro.codigo_resolucion
    fill_in "Fecha resolucion", with: @movimiento_rubro.fecha_resolucion
    fill_in "Identificacion rubro", with: @movimiento_rubro.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @movimiento_rubro.identificacion_rubro_interno
    fill_in "Observacion resolucion", with: @movimiento_rubro.observacion_resolucion
    fill_in "Presupuesto inicial", with: @movimiento_rubro.presupuesto_inicial
    fill_in "Tipo movimiento", with: @movimiento_rubro.tipo_movimiento
    fill_in "Valor movimiento", with: @movimiento_rubro.valor_movimiento
    click_on "Create Movimiento rubro"

    assert_text "Movimiento rubro was successfully created"
    click_on "Back"
  end

  test "should update Movimiento rubro" do
    visit movimiento_rubro_url(@movimiento_rubro)
    click_on "Edit this movimiento rubro", match: :first

    fill_in "Codigo dependencia", with: @movimiento_rubro.codigo_dependencia
    fill_in "Codigo resolucion", with: @movimiento_rubro.codigo_resolucion
    fill_in "Fecha resolucion", with: @movimiento_rubro.fecha_resolucion
    fill_in "Identificacion rubro", with: @movimiento_rubro.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @movimiento_rubro.identificacion_rubro_interno
    fill_in "Observacion resolucion", with: @movimiento_rubro.observacion_resolucion
    fill_in "Presupuesto inicial", with: @movimiento_rubro.presupuesto_inicial
    fill_in "Tipo movimiento", with: @movimiento_rubro.tipo_movimiento
    fill_in "Valor movimiento", with: @movimiento_rubro.valor_movimiento
    click_on "Update Movimiento rubro"

    assert_text "Movimiento rubro was successfully updated"
    click_on "Back"
  end

  test "should destroy Movimiento rubro" do
    visit movimiento_rubro_url(@movimiento_rubro)
    click_on "Destroy this movimiento rubro", match: :first

    assert_text "Movimiento rubro was successfully destroyed"
  end
end
