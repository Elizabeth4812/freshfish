require "application_system_test_case"

class ContactosTest < ApplicationSystemTestCase
  setup do
    @contacto = contactos(:one)
  end

  test "visiting the index" do
    visit contactos_url
    assert_selector "h1", text: "Contactos"
  end

  test "should create contacto" do
    visit contactos_url
    click_on "New contacto"

    fill_in "Asunto", with: @contacto.asunto
    fill_in "Correo", with: @contacto.correo
    fill_in "Mensaje", with: @contacto.mensaje
    fill_in "Nombre", with: @contacto.nombre
    click_on "Create Contacto"

    assert_text "Contacto was successfully created"
    click_on "Back"
  end

  test "should update Contacto" do
    visit contacto_url(@contacto)
    click_on "Edit this contacto", match: :first

    fill_in "Asunto", with: @contacto.asunto
    fill_in "Correo", with: @contacto.correo
    fill_in "Mensaje", with: @contacto.mensaje
    fill_in "Nombre", with: @contacto.nombre
    click_on "Update Contacto"

    assert_text "Contacto was successfully updated"
    click_on "Back"
  end

  test "should destroy Contacto" do
    visit contacto_url(@contacto)
    click_on "Destroy this contacto", match: :first

    assert_text "Contacto was successfully destroyed"
  end
end
