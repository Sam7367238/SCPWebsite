require "application_system_test_case"

class ScpsTest < ApplicationSystemTestCase
  setup do
    @scp = scps(:one)
  end

  test "visiting the index" do
    visit scps_url
    assert_selector "h1", text: "Scps"
  end

  test "should create scp" do
    visit scps_url
    click_on "New scp"

    fill_in "Classification", with: @scp.classification
    fill_in "Item number", with: @scp.item_number
    click_on "Create Scp"

    assert_text "Scp was successfully created"
    click_on "Back"
  end

  test "should update Scp" do
    visit scp_url(@scp)
    click_on "Edit this scp", match: :first

    fill_in "Classification", with: @scp.classification
    fill_in "Item number", with: @scp.item_number
    click_on "Update Scp"

    assert_text "Scp was successfully updated"
    click_on "Back"
  end

  test "should destroy Scp" do
    visit scp_url(@scp)
    click_on "Destroy this scp", match: :first

    assert_text "Scp was successfully destroyed"
  end
end
