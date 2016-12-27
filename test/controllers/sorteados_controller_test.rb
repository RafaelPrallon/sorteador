require 'test_helper'

class SorteadosControllerTest < ActionController::TestCase
  setup do
    @sorteado = sorteados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sorteados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sorteado" do
    assert_difference('Sorteado.count') do
      post :create, sorteado: { name: @sorteado.name }
    end

    assert_redirected_to sorteado_path(assigns(:sorteado))
  end

  test "should show sorteado" do
    get :show, id: @sorteado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sorteado
    assert_response :success
  end

  test "should update sorteado" do
    patch :update, id: @sorteado, sorteado: { name: @sorteado.name }
    assert_redirected_to sorteado_path(assigns(:sorteado))
  end

  test "should destroy sorteado" do
    assert_difference('Sorteado.count', -1) do
      delete :destroy, id: @sorteado
    end

    assert_redirected_to sorteados_path
  end
end
