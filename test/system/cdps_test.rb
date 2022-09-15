require "application_system_test_case"

class CdpsTest < ApplicationSystemTestCase
  setup do
    @cdp = cdps(:one)
  end

  test "visiting the index" do
    visit cdps_url
    assert_selector "h1", text: "Cdps"
  end

  test "should create cdp" do
    visit cdps_url
    click_on "New cdp"

    fill_in "Concepto cdp", with: @cdp.concepto_cdp
    fill_in "Identificacion del rubro", with: @cdp.identificacion_del_rubro
    fill_in "Identificacion del rubro interno", with: @cdp.identificacion_del_rubro_interno
    fill_in "Numero de cdp", with: @cdp.numero_de_cdp
    fill_in "Tipo de movimiento cdp", with: @cdp.tipo_de_movimiento_cdp
    fill_in "Valor del cdp", with: @cdp.valor_del_cdp
    fill_in "Valor del movimiento cdp", with: @cdp.valor_del_movimiento_cdp
    click_on "Create Cdp"

    assert_text "Cdp was successfully created"
    click_on "Back"
  end

  test "should update Cdp" do
    visit cdp_url(@cdp)
    click_on "Edit this cdp", match: :first

    fill_in "Concepto cdp", with: @cdp.concepto_cdp
    fill_in "Identificacion del rubro", with: @cdp.identificacion_del_rubro
    fill_in "Identificacion del rubro interno", with: @cdp.identificacion_del_rubro_interno
    fill_in "Numero de cdp", with: @cdp.numero_de_cdp
    fill_in "Tipo de movimiento cdp", with: @cdp.tipo_de_movimiento_cdp
    fill_in "Valor del cdp", with: @cdp.valor_del_cdp
    fill_in "Valor del movimiento cdp", with: @cdp.valor_del_movimiento_cdp
    click_on "Update Cdp"

    assert_text "Cdp was successfully updated"
    click_on "Back"
  end

  test "should destroy Cdp" do
    visit cdp_url(@cdp)
    click_on "Destroy this cdp", match: :first

    assert_text "Cdp was successfully destroyed"
  end
end
