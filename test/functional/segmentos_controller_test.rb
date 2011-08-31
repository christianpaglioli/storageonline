require 'test_helper'

class SegmentosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:segmentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create segmento" do
    assert_difference('Segmento.count') do
      post :create, :segmento => { }
    end

    assert_redirected_to segmento_path(assigns(:segmento))
  end

  test "should show segmento" do
    get :show, :id => segmentos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => segmentos(:one).to_param
    assert_response :success
  end

  test "should update segmento" do
    put :update, :id => segmentos(:one).to_param, :segmento => { }
    assert_redirected_to segmento_path(assigns(:segmento))
  end

  test "should destroy segmento" do
    assert_difference('Segmento.count', -1) do
      delete :destroy, :id => segmentos(:one).to_param
    end

    assert_redirected_to segmentos_path
  end
end
