require "application_system_test_case"

class RpMovementsTest < ApplicationSystemTestCase
  setup do
    @rp_movement = rp_movements(:one)
  end

  test "visiting the index" do
    visit rp_movements_url
    assert_selector "h1", text: "Rp movements"
  end

  test "should create rp movement" do
    visit rp_movements_url
    click_on "New rp movement"

    fill_in "Concepto movimiento cdp", with: @rp_movement.concepto_movimiento_cdp
    fill_in "Fecha movimiento rp", with: @rp_movement.fecha_movimiento_rp
    fill_in "Identificacion rubro", with: @rp_movement.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @rp_movement.identificacion_rubro_interno
    fill_in "Numero rp", with: @rp_movement.numero_rp
    fill_in "Saldo rp", with: @rp_movement.saldo_rp
    fill_in "Valor movimiento rp", with: @rp_movement.valor_movimiento_rp
    click_on "Create Rp movement"

    assert_text "Rp movement was successfully created"
    click_on "Back"
  end

  test "should update Rp movement" do
    visit rp_movement_url(@rp_movement)
    click_on "Edit this rp movement", match: :first

    fill_in "Concepto movimiento cdp", with: @rp_movement.concepto_movimiento_cdp
    fill_in "Fecha movimiento rp", with: @rp_movement.fecha_movimiento_rp
    fill_in "Identificacion rubro", with: @rp_movement.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @rp_movement.identificacion_rubro_interno
    fill_in "Numero rp", with: @rp_movement.numero_rp
    fill_in "Saldo rp", with: @rp_movement.saldo_rp
    fill_in "Valor movimiento rp", with: @rp_movement.valor_movimiento_rp
    click_on "Update Rp movement"

    assert_text "Rp movement was successfully updated"
    click_on "Back"
  end

  test "should destroy Rp movement" do
    visit rp_movement_url(@rp_movement)
    click_on "Destroy this rp movement", match: :first

    assert_text "Rp movement was successfully destroyed"
  end
end
