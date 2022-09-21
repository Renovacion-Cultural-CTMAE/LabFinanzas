require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Codigo dependencia", with: @item.codigo_dependencia
    fill_in "Identificacion", with: @item.identificacion
    fill_in "Identificacion interna", with: @item.identificacion_interna
    fill_in "Nombre rubro", with: @item.nombre_rubro
    fill_in "Observacion", with: @item.observacion
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Codigo dependencia", with: @item.codigo_dependencia
    fill_in "Identificacion", with: @item.identificacion
    fill_in "Identificacion interna", with: @item.identificacion_interna
    fill_in "Nombre rubro", with: @item.nombre_rubro
    fill_in "Observacion", with: @item.observacion
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
