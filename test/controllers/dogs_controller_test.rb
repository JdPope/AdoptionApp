require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_url
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { age: @dog.age, bio: @dog.bio, fixed: @dog.fixed, image_url: @dog.image_url, kids_compatible: @dog.kids_compatible, name: @dog.name, pets_compatible: @dog.pets_compatible, size: @dog.size, vaccinated: @dog.vaccinated } }
    end

    assert_redirected_to dog_url(Dog.last)
  end

  test "should show dog" do
    get dog_url(@dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_url(@dog)
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { age: @dog.age, bio: @dog.bio, fixed: @dog.fixed, image_url: @dog.image_url, kids_compatible: @dog.kids_compatible, name: @dog.name, pets_compatible: @dog.pets_compatible, size: @dog.size, vaccinated: @dog.vaccinated } }
    assert_redirected_to dog_url(@dog)
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog)
    end

    assert_redirected_to dogs_url
  end
end
