require "application_system_test_case"

class RubrosTest < ApplicationSystemTestCase
  setup do
    @rubro = rubros(:one)
  end

  test "visiting the index" do
    visit rubros_url
    assert_selector "h1", text: "Rubros"
  end

  test "should create rubro" do
    visit rubros_url
    click_on "New rubro"

    fill_in "Codigo dependencia", with: @rubro.codigo_dependencia
    fill_in "Identificacion del rubro", with: @rubro.identificacion_del_rubro
    fill_in "Identificacion rubro interno", with: @rubro.identificacion_rubro_interno
    fill_in "Nombres del rubro", with: @rubro.nombres_del_rubro
    fill_in "Observacion", with: @rubro.observacion
    click_on "Create Rubro"

    assert_text "Rubro was successfully created"
    click_on "Back"
  end

  test "should update Rubro" do
    visit rubro_url(@rubro)
    click_on "Edit this rubro", match: :first

    fill_in "Codigo dependencia", with: @rubro.codigo_dependencia
    fill_in "Identificacion del rubro", with: @rubro.identificacion_del_rubro
    fill_in "Identificacion rubro interno", with: @rubro.identificacion_rubro_interno
    fill_in "Nombres del rubro", with: @rubro.nombres_del_rubro
    fill_in "Observacion", with: @rubro.observacion
    click_on "Update Rubro"

    assert_text "Rubro was successfully updated"
    click_on "Back"
  end

  test "should destroy Rubro" do
    visit rubro_url(@rubro)
    click_on "Destroy this rubro", match: :first

    assert_text "Rubro was successfully destroyed"
  end
end
