require "application_system_test_case"

class MovimientoRpsTest < ApplicationSystemTestCase
  setup do
    @movimiento_rp = movimiento_rps(:one)
  end

  test "visiting the index" do
    visit movimiento_rps_url
    assert_selector "h1", text: "Movimiento rps"
  end

  test "should create movimiento rp" do
    visit movimiento_rps_url
    click_on "New movimiento rp"

    fill_in "Concepto movimiento cdp", with: @movimiento_rp.concepto_movimiento_cdp
    fill_in "Fecha del movimiento rp", with: @movimiento_rp.fecha_del_movimiento_rp
    fill_in "Identificacion rubro", with: @movimiento_rp.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @movimiento_rp.identificacion_rubro_interno
    fill_in "Numero rp", with: @movimiento_rp.numero_rp
    fill_in "Saldo rp", with: @movimiento_rp.saldo_rp
    fill_in "Valor movimento rp", with: @movimiento_rp.valor_movimento_rp
    click_on "Create Movimiento rp"

    assert_text "Movimiento rp was successfully created"
    click_on "Back"
  end

  test "should update Movimiento rp" do
    visit movimiento_rp_url(@movimiento_rp)
    click_on "Edit this movimiento rp", match: :first

    fill_in "Concepto movimiento cdp", with: @movimiento_rp.concepto_movimiento_cdp
    fill_in "Fecha del movimiento rp", with: @movimiento_rp.fecha_del_movimiento_rp
    fill_in "Identificacion rubro", with: @movimiento_rp.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @movimiento_rp.identificacion_rubro_interno
    fill_in "Numero rp", with: @movimiento_rp.numero_rp
    fill_in "Saldo rp", with: @movimiento_rp.saldo_rp
    fill_in "Valor movimento rp", with: @movimiento_rp.valor_movimento_rp
    click_on "Update Movimiento rp"

    assert_text "Movimiento rp was successfully updated"
    click_on "Back"
  end

  test "should destroy Movimiento rp" do
    visit movimiento_rp_url(@movimiento_rp)
    click_on "Destroy this movimiento rp", match: :first

    assert_text "Movimiento rp was successfully destroyed"
  end
end
