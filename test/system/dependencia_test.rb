require "application_system_test_case"

class DependenciaTest < ApplicationSystemTestCase
  setup do
    @dependencium = dependencia(:one)
  end

  test "visiting the index" do
    visit dependencia_url
    assert_selector "h1", text: "Dependencia"
  end

  test "should create dependencium" do
    visit dependencia_url
    click_on "New dependencium"

    fill_in "Codigo dependencia", with: @dependencium.codigo_dependencia
    fill_in "Identificacio rubro", with: @dependencium.identificacio_rubro
    fill_in "Identificacion rubro interno", with: @dependencium.identificacion_rubro_interno
    fill_in "Nombre dependencia", with: @dependencium.nombre_dependencia
    click_on "Create Dependencium"

    assert_text "Dependencium was successfully created"
    click_on "Back"
  end

  test "should update Dependencium" do
    visit dependencium_url(@dependencium)
    click_on "Edit this dependencium", match: :first

    fill_in "Codigo dependencia", with: @dependencium.codigo_dependencia
    fill_in "Identificacio rubro", with: @dependencium.identificacio_rubro
    fill_in "Identificacion rubro interno", with: @dependencium.identificacion_rubro_interno
    fill_in "Nombre dependencia", with: @dependencium.nombre_dependencia
    click_on "Update Dependencium"

    assert_text "Dependencium was successfully updated"
    click_on "Back"
  end

  test "should destroy Dependencium" do
    visit dependencium_url(@dependencium)
    click_on "Destroy this dependencium", match: :first

    assert_text "Dependencium was successfully destroyed"
  end
end
