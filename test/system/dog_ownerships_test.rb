require "application_system_test_case"

class DogOwnershipsTest < ApplicationSystemTestCase
  setup do
    @dog_ownership = dog_ownerships(:one)
  end

  test "visiting the index" do
    visit dog_ownerships_url
    assert_selector "h1", text: "Dog ownerships"
  end

  test "should create dog ownership" do
    visit dog_ownerships_url
    click_on "New dog ownership"

    fill_in "Dog", with: @dog_ownership.dog_id
    fill_in "Owner", with: @dog_ownership.owner_id
    click_on "Create Dog ownership"

    assert_text "Dog ownership was successfully created"
    click_on "Back"
  end

  test "should update Dog ownership" do
    visit dog_ownership_url(@dog_ownership)
    click_on "Edit this dog ownership", match: :first

    fill_in "Dog", with: @dog_ownership.dog_id
    fill_in "Owner", with: @dog_ownership.owner_id
    click_on "Update Dog ownership"

    assert_text "Dog ownership was successfully updated"
    click_on "Back"
  end

  test "should destroy Dog ownership" do
    visit dog_ownership_url(@dog_ownership)
    click_on "Destroy this dog ownership", match: :first

    assert_text "Dog ownership was successfully destroyed"
  end
end
