require 'test_helper'

class ComparativosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comparativos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comparativo" do
    assert_difference('Comparativo.count') do
      post :create, :comparativo => { }
    end

    assert_redirected_to comparativo_path(assigns(:comparativo))
  end

  test "should show comparativo" do
    get :show, :id => comparativos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => comparativos(:one).to_param
    assert_response :success
  end

  test "should update comparativo" do
    put :update, :id => comparativos(:one).to_param, :comparativo => { }
    assert_redirected_to comparativo_path(assigns(:comparativo))
  end

  test "should destroy comparativo" do
    assert_difference('Comparativo.count', -1) do
      delete :destroy, :id => comparativos(:one).to_param
    end

    assert_redirected_to comparativos_path
  end
end
