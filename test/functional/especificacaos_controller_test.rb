require 'test_helper'

class EspecificacaosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especificacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especificacao" do
    assert_difference('Especificacao.count') do
      post :create, :especificacao => { }
    end

    assert_redirected_to especificacao_path(assigns(:especificacao))
  end

  test "should show especificacao" do
    get :show, :id => especificacaos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => especificacaos(:one).to_param
    assert_response :success
  end

  test "should update especificacao" do
    put :update, :id => especificacaos(:one).to_param, :especificacao => { }
    assert_redirected_to especificacao_path(assigns(:especificacao))
  end

  test "should destroy especificacao" do
    assert_difference('Especificacao.count', -1) do
      delete :destroy, :id => especificacaos(:one).to_param
    end

    assert_redirected_to especificacaos_path
  end
end
