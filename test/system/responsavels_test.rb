require "application_system_test_case"

class ResponsavelsTest < ApplicationSystemTestCase
  setup do
    @responsavel = responsavels(:one)
  end

  test "visiting the index" do
    visit responsavels_url
    assert_selector "h1", text: "Responsavels"
  end

  test "creating a Responsavel" do
    visit responsavels_url
    click_on "New Responsavel"

    click_on "Create Responsavel"

    assert_text "Responsavel was successfully created"
    click_on "Back"
  end

  test "updating a Responsavel" do
    visit responsavels_url
    click_on "Edit", match: :first

    click_on "Update Responsavel"

    assert_text "Responsavel was successfully updated"
    click_on "Back"
  end

  test "destroying a Responsavel" do
    visit responsavels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Responsavel was successfully destroyed"
  end
end
