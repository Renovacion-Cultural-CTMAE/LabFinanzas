require "application_system_test_case"

class CdpMovementsTest < ApplicationSystemTestCase
  setup do
    @cdp_movement = cdp_movements(:one)
  end

  test "visiting the index" do
    visit cdp_movements_url
    assert_selector "h1", text: "Cdp movements"
  end

  test "should create cdp movement" do
    visit cdp_movements_url
    click_on "New cdp movement"

    fill_in "Concepto movimiento cdp", with: @cdp_movement.concepto_movimiento_cdp
    fill_in "Fecha movimiento cdp", with: @cdp_movement.fecha_movimiento_cdp
    fill_in "Identificacion rubro", with: @cdp_movement.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @cdp_movement.identificacion_rubro_interno
    fill_in "Numero cdp", with: @cdp_movement.numero_cdp
    fill_in "Saldo cdp", with: @cdp_movement.saldo_cdp
    fill_in "Valor movimiento cdp", with: @cdp_movement.valor_movimiento_cdp
    click_on "Create Cdp movement"

    assert_text "Cdp movement was successfully created"
    click_on "Back"
  end

  test "should update Cdp movement" do
    visit cdp_movement_url(@cdp_movement)
    click_on "Edit this cdp movement", match: :first

    fill_in "Concepto movimiento cdp", with: @cdp_movement.concepto_movimiento_cdp
    fill_in "Fecha movimiento cdp", with: @cdp_movement.fecha_movimiento_cdp
    fill_in "Identificacion rubro", with: @cdp_movement.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @cdp_movement.identificacion_rubro_interno
    fill_in "Numero cdp", with: @cdp_movement.numero_cdp
    fill_in "Saldo cdp", with: @cdp_movement.saldo_cdp
    fill_in "Valor movimiento cdp", with: @cdp_movement.valor_movimiento_cdp
    click_on "Update Cdp movement"

    assert_text "Cdp movement was successfully updated"
    click_on "Back"
  end

  test "should destroy Cdp movement" do
    visit cdp_movement_url(@cdp_movement)
    click_on "Destroy this cdp movement", match: :first

    assert_text "Cdp movement was successfully destroyed"
  end
end
