require "application_system_test_case"

class MovimientoCdpsTest < ApplicationSystemTestCase
  setup do
    @movimiento_cdp = movimiento_cdps(:one)
  end

  test "visiting the index" do
    visit movimiento_cdps_url
    assert_selector "h1", text: "Movimiento cdps"
  end

  test "should create movimiento cdp" do
    visit movimiento_cdps_url
    click_on "New movimiento cdp"

    fill_in "Concepto de movimiento cdp", with: @movimiento_cdp.concepto_de_movimiento_cdp
    fill_in "Fecha de movimiento del cdp", with: @movimiento_cdp.fecha_de_movimiento_del_cdp
    fill_in "Identificacion del rubro", with: @movimiento_cdp.identificacion_del_rubro
    fill_in "Identificacion del rubro interno", with: @movimiento_cdp.identificacion_del_rubro_interno
    fill_in "Numero de cdp", with: @movimiento_cdp.numero_de_cdp
    fill_in "Saldo cdp", with: @movimiento_cdp.saldo_cdp
    fill_in "Valor movimento cdp", with: @movimiento_cdp.valor_movimento_cdp
    click_on "Create Movimiento cdp"

    assert_text "Movimiento cdp was successfully created"
    click_on "Back"
  end

  test "should update Movimiento cdp" do
    visit movimiento_cdp_url(@movimiento_cdp)
    click_on "Edit this movimiento cdp", match: :first

    fill_in "Concepto de movimiento cdp", with: @movimiento_cdp.concepto_de_movimiento_cdp
    fill_in "Fecha de movimiento del cdp", with: @movimiento_cdp.fecha_de_movimiento_del_cdp
    fill_in "Identificacion del rubro", with: @movimiento_cdp.identificacion_del_rubro
    fill_in "Identificacion del rubro interno", with: @movimiento_cdp.identificacion_del_rubro_interno
    fill_in "Numero de cdp", with: @movimiento_cdp.numero_de_cdp
    fill_in "Saldo cdp", with: @movimiento_cdp.saldo_cdp
    fill_in "Valor movimento cdp", with: @movimiento_cdp.valor_movimento_cdp
    click_on "Update Movimiento cdp"

    assert_text "Movimiento cdp was successfully updated"
    click_on "Back"
  end

  test "should destroy Movimiento cdp" do
    visit movimiento_cdp_url(@movimiento_cdp)
    click_on "Destroy this movimiento cdp", match: :first

    assert_text "Movimiento cdp was successfully destroyed"
  end
end
