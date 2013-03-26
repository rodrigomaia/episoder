require 'test_helper'

class GenerosControllerTest < ActionController::TestCase
  setup do
    @genero = generos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create genero" do
    assert_difference('Genero.count') do
      post :create, genero: { name: @genero.name }
    end

    assert_redirected_to genero_path(assigns(:genero))
  end

  test "should show genero" do
    get :show, id: @genero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @genero
    assert_response :success
  end

  test "should update genero" do
    put :update, id: @genero, genero: { name: @genero.name }
    assert_redirected_to genero_path(assigns(:genero))
  end

  test "should destroy genero" do
    assert_difference('Genero.count', -1) do
      delete :destroy, id: @genero
    end

    assert_redirected_to generos_path
  end
end
