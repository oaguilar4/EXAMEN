require 'test_helper'

class EstrellasControllerTest < ActionController::TestCase
  setup do
    @estrella = estrellas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estrellas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estrella" do
    assert_difference('Estrella.count') do
      post :create, estrella: { nombre: @estrella.nombre }
    end

    assert_redirected_to estrella_path(assigns(:estrella))
  end

  test "should show estrella" do
    get :show, id: @estrella
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estrella
    assert_response :success
  end

  test "should update estrella" do
    patch :update, id: @estrella, estrella: { nombre: @estrella.nombre }
    assert_redirected_to estrella_path(assigns(:estrella))
  end

  test "should destroy estrella" do
    assert_difference('Estrella.count', -1) do
      delete :destroy, id: @estrella
    end

    assert_redirected_to estrellas_path
  end
end
