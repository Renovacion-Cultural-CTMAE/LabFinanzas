require "application_system_test_case"

class DependencesTest < ApplicationSystemTestCase
  setup do
    @dependence = dependences(:one)
  end

  test "visiting the index" do
    visit dependences_url
    assert_selector "h1", text: "Dependences"
  end

  test "should create dependence" do
    visit dependences_url
    click_on "New dependence"

    fill_in "Codigo dependencia", with: @dependence.codigo_dependencia
    fill_in "Identificacion rubro", with: @dependence.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @dependence.identificacion_rubro_interno
    fill_in "Nombre dependencia", with: @dependence.nombre_dependencia
    click_on "Create Dependence"

    assert_text "Dependence was successfully created"
    click_on "Back"
  end

  test "should update Dependence" do
    visit dependence_url(@dependence)
    click_on "Edit this dependence", match: :first

    fill_in "Codigo dependencia", with: @dependence.codigo_dependencia
    fill_in "Identificacion rubro", with: @dependence.identificacion_rubro
    fill_in "Identificacion rubro interno", with: @dependence.identificacion_rubro_interno
    fill_in "Nombre dependencia", with: @dependence.nombre_dependencia
    click_on "Update Dependence"

    assert_text "Dependence was successfully updated"
    click_on "Back"
  end

  test "should destroy Dependence" do
    visit dependence_url(@dependence)
    click_on "Destroy this dependence", match: :first

    assert_text "Dependence was successfully destroyed"
  end
end
