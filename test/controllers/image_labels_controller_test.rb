require 'test_helper'

class ImageLabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_label = image_labels(:one)
  end

  test "should get index" do
    get image_labels_url
    assert_response :success
  end

  test "should get new" do
    get new_image_label_url
    assert_response :success
  end

  test "should create image_label" do
    assert_difference('ImageLabel.count') do
      post image_labels_url, params: { image_label: { confidence: @image_label.confidence, image_id: @image_label.image_id, label_id: @image_label.label_id, source: @image_label.source } }
    end

    assert_redirected_to image_label_url(ImageLabel.last)
  end

  test "should show image_label" do
    get image_label_url(@image_label)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_label_url(@image_label)
    assert_response :success
  end

  test "should update image_label" do
    patch image_label_url(@image_label), params: { image_label: { confidence: @image_label.confidence, image_id: @image_label.image_id, label_id: @image_label.label_id, source: @image_label.source } }
    assert_redirected_to image_label_url(@image_label)
  end

  test "should destroy image_label" do
    assert_difference('ImageLabel.count', -1) do
      delete image_label_url(@image_label)
    end

    assert_redirected_to image_labels_url
  end
end
