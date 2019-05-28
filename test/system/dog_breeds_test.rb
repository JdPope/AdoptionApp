require "application_system_test_case"

class DogBreedsTest < ApplicationSystemTestCase
  setup do
    @dog_breed = dog_breeds(:one)
  end

  test "visiting the index" do
    visit dog_breeds_url
    assert_selector "h1", text: "Dog Breeds"
  end

  test "creating a Dog breed" do
    visit dog_breeds_url
    click_on "New Dog Breed"

    fill_in "Breed", with: @dog_breed.breed_id
    fill_in "Dog", with: @dog_breed.dog_id
    click_on "Create Dog breed"

    assert_text "Dog breed was successfully created"
    click_on "Back"
  end

  test "updating a Dog breed" do
    visit dog_breeds_url
    click_on "Edit", match: :first

    fill_in "Breed", with: @dog_breed.breed_id
    fill_in "Dog", with: @dog_breed.dog_id
    click_on "Update Dog breed"

    assert_text "Dog breed was successfully updated"
    click_on "Back"
  end

  test "destroying a Dog breed" do
    visit dog_breeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dog breed was successfully destroyed"
  end
end
