require "test_helper"

class PaintingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @painting = paintings(:one)
  end

  test "should get index" do
    get paintings_url
    assert_response :success
  end

  test "should get new" do
    get new_painting_url
    assert_response :success
  end

  test "should create painting" do
    assert_difference('Painting.count') do
      post paintings_url, params: { painting: { dominant_color: @painting.dominant_color, height: @painting.height, id_painting: @painting.id_painting, img_root: @painting.img_root, name_painting: @painting.name_painting, price: @painting.price, type: @painting.type, width: @painting.width } }
    end

    assert_redirected_to painting_url(Painting.last)
  end

  test "should show painting" do
    get painting_url(@painting)
    assert_response :success
  end

  test "should get edit" do
    get edit_painting_url(@painting)
    assert_response :success
  end

  test "should update painting" do
    patch painting_url(@painting), params: { painting: { dominant_color: @painting.dominant_color, height: @painting.height, id_painting: @painting.id_painting, img_root: @painting.img_root, name_painting: @painting.name_painting, price: @painting.price, type: @painting.type, width: @painting.width } }
    assert_redirected_to painting_url(@painting)
  end

  test "should destroy painting" do
    assert_difference('Painting.count', -1) do
      delete painting_url(@painting)
    end

    assert_redirected_to paintings_url
  end
end
