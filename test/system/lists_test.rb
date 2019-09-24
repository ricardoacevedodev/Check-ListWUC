require "application_system_test_case"

class ListsTest < ApplicationSystemTestCase
  setup do
    @list = lists(:one)
  end

  test "visiting the index" do
    visit lists_url
    assert_selector "h1", text: "Lists"
  end

  test "creating a List" do
    visit lists_url
    click_on "New List"

    check "Abinternalcontrol" if @list.ABInternalControl
    fill_in "Ewr", with: @list.EWR
    check "Finallogsheetupdate" if @list.FinalLogSheetUpdate
    check "Initialsheetupdate" if @list.InitialSheetUpdate
    check "Performancetest" if @list.PerformanceTest
    check "Photorecived" if @list.PhotoRecived
    fill_in "Plataform", with: @list.Plataform
    check "Qrd" if @list.QRD
    check "Scanning" if @list.Scanning
    check "Teardownformat" if @list.TearDownFormat
    fill_in "Unit", with: @list.Unit
    click_on "Create List"

    assert_text "List was successfully created"
    click_on "Back"
  end

  test "updating a List" do
    visit lists_url
    click_on "Edit", match: :first

    check "Abinternalcontrol" if @list.ABInternalControl
    fill_in "Ewr", with: @list.EWR
    check "Finallogsheetupdate" if @list.FinalLogSheetUpdate
    check "Initialsheetupdate" if @list.InitialSheetUpdate
    check "Performancetest" if @list.PerformanceTest
    check "Photorecived" if @list.PhotoRecived
    fill_in "Plataform", with: @list.Plataform
    check "Qrd" if @list.QRD
    check "Scanning" if @list.Scanning
    check "Teardownformat" if @list.TearDownFormat
    fill_in "Unit", with: @list.Unit
    click_on "Update List"

    assert_text "List was successfully updated"
    click_on "Back"
  end

  test "destroying a List" do
    visit lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List was successfully destroyed"
  end
end
