require "application_system_test_case"

class RpsTest < ApplicationSystemTestCase
  setup do
    @rp = rps(:one)
  end

  test "visiting the index" do
    visit rps_url
    assert_selector "h1", text: "Rps"
  end

  test "should create rp" do
    visit rps_url
    click_on "New rp"

    fill_in "Concepto rp", with: @rp.concepto_rp
    fill_in "Identificacion del rubro", with: @rp.identificacion_del_rubro
    fill_in "Identificacion del rubro interno", with: @rp.identificacion_del_rubro_interno
    fill_in "Numero cdp", with: @rp.numero_cdp
    fill_in "Numero de rp", with: @rp.numero_de_rp
    fill_in "Tipo de movimiento rp", with: @rp.tipo_de_movimiento_rp
    fill_in "Valor de rp", with: @rp.valor_de_rp
    fill_in "Valor movimiento rp", with: @rp.valor_movimiento_rp
    click_on "Create Rp"

    assert_text "Rp was successfully created"
    click_on "Back"
  end

  test "should update Rp" do
    visit rp_url(@rp)
    click_on "Edit this rp", match: :first

    fill_in "Concepto rp", with: @rp.concepto_rp
    fill_in "Identificacion del rubro", with: @rp.identificacion_del_rubro
    fill_in "Identificacion del rubro interno", with: @rp.identificacion_del_rubro_interno
    fill_in "Numero cdp", with: @rp.numero_cdp
    fill_in "Numero de rp", with: @rp.numero_de_rp
    fill_in "Tipo de movimiento rp", with: @rp.tipo_de_movimiento_rp
    fill_in "Valor de rp", with: @rp.valor_de_rp
    fill_in "Valor movimiento rp", with: @rp.valor_movimiento_rp
    click_on "Update Rp"

    assert_text "Rp was successfully updated"
    click_on "Back"
  end

  test "should destroy Rp" do
    visit rp_url(@rp)
    click_on "Destroy this rp", match: :first

    assert_text "Rp was successfully destroyed"
  end
end
