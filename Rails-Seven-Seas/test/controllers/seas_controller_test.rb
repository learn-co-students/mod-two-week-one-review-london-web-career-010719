require 'test_helper'

class SeasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sea = seas(:one)
  end

  test "should get index" do
    get seas_url
    assert_response :success
  end

  test "should get new" do
    get new_sea_url
    assert_response :success
  end

  test "should create sea" do
    assert_difference('Sea.count') do
      post seas_url, params: { sea: { bio: @sea.bio, favorite_color: @sea.favorite_color, has_mermaids: @sea.has_mermaids, image_url: @sea.image_url, mood: @sea.mood, name: @sea.name, scariest_creature: @sea.scariest_creature, temperature: @sea.temperature } }
    end

    assert_redirected_to sea_url(Sea.last)
  end

  test "should show sea" do
    get sea_url(@sea)
    assert_response :success
  end

  test "should get edit" do
    get edit_sea_url(@sea)
    assert_response :success
  end

  test "should update sea" do
    patch sea_url(@sea), params: { sea: { bio: @sea.bio, favorite_color: @sea.favorite_color, has_mermaids: @sea.has_mermaids, image_url: @sea.image_url, mood: @sea.mood, name: @sea.name, scariest_creature: @sea.scariest_creature, temperature: @sea.temperature } }
    assert_redirected_to sea_url(@sea)
  end

  test "should destroy sea" do
    assert_difference('Sea.count', -1) do
      delete sea_url(@sea)
    end

    assert_redirected_to seas_url
  end
end
