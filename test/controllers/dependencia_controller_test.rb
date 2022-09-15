require "test_helper"

class DependenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dependencium = dependencia(:one)
  end

  test "should get index" do
    get dependencia_url
    assert_response :success
  end

  test "should get new" do
    get new_dependencium_url
    assert_response :success
  end

  test "should create dependencium" do
    assert_difference("Dependencium.count") do
      post dependencia_url, params: { dependencium: { codigo_dependencia: @dependencium.codigo_dependencia, identificacio_rubro: @dependencium.identificacio_rubro, identificacion_rubro_interno: @dependencium.identificacion_rubro_interno, nombre_dependencia: @dependencium.nombre_dependencia } }
    end

    assert_redirected_to dependencium_url(Dependencium.last)
  end

  test "should show dependencium" do
    get dependencium_url(@dependencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_dependencium_url(@dependencium)
    assert_response :success
  end

  test "should update dependencium" do
    patch dependencium_url(@dependencium), params: { dependencium: { codigo_dependencia: @dependencium.codigo_dependencia, identificacio_rubro: @dependencium.identificacio_rubro, identificacion_rubro_interno: @dependencium.identificacion_rubro_interno, nombre_dependencia: @dependencium.nombre_dependencia } }
    assert_redirected_to dependencium_url(@dependencium)
  end

  test "should destroy dependencium" do
    assert_difference("Dependencium.count", -1) do
      delete dependencium_url(@dependencium)
    end

    assert_redirected_to dependencia_url
  end
end
