require 'test_helper'

class DogBreedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_breed = dog_breeds(:one)
  end

  test "should get index" do
    get dog_breeds_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_breed_url
    assert_response :success
  end

  test "should create dog_breed" do
    assert_difference('DogBreed.count') do
      post dog_breeds_url, params: { dog_breed: { breed_id: @dog_breed.breed_id, dog_id: @dog_breed.dog_id } }
    end

    assert_redirected_to dog_breed_url(DogBreed.last)
  end

  test "should show dog_breed" do
    get dog_breed_url(@dog_breed)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_breed_url(@dog_breed)
    assert_response :success
  end

  test "should update dog_breed" do
    patch dog_breed_url(@dog_breed), params: { dog_breed: { breed_id: @dog_breed.breed_id, dog_id: @dog_breed.dog_id } }
    assert_redirected_to dog_breed_url(@dog_breed)
  end

  test "should destroy dog_breed" do
    assert_difference('DogBreed.count', -1) do
      delete dog_breed_url(@dog_breed)
    end

    assert_redirected_to dog_breeds_url
  end
end
