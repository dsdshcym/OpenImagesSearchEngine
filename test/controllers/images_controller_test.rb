require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image = images(:one)
  end

  test "should get index" do
    get images_url
    assert_response :success
  end

  test "should get new" do
    get new_image_url
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post images_url, params: { image: { author: @image.author, author_profile_url: @image.author_profile_url, image_id: @image.image_id, license: @image.license, original_landing_url: @image.original_landing_url, original_md5: @image.original_md5, original_size: @image.original_size, original_url: @image.original_url, subset: @image.subset, thumbnail_300k_url: @image.thumbnail_300k_url, title: @image.title } }
    end

    assert_redirected_to image_url(Image.last)
  end

  test "should show image" do
    get image_url(@image)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_url(@image)
    assert_response :success
  end

  test "should update image" do
    patch image_url(@image), params: { image: { author: @image.author, author_profile_url: @image.author_profile_url, image_id: @image.image_id, license: @image.license, original_landing_url: @image.original_landing_url, original_md5: @image.original_md5, original_size: @image.original_size, original_url: @image.original_url, subset: @image.subset, thumbnail_300k_url: @image.thumbnail_300k_url, title: @image.title } }
    assert_redirected_to image_url(@image)
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete image_url(@image)
    end

    assert_redirected_to images_url
  end
end
