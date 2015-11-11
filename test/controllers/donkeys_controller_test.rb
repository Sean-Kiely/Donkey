require 'test_helper'

class DonkeysControllerTest < ActionController::TestCase
  setup do
    @donkey = donkeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donkeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donkey" do
    assert_difference('Donkey.count') do
      post :create, donkey: { breed_id: @donkey.breed_id, dob: @donkey.dob, med_cond: @donkey.med_cond, name: @donkey.name, owner_id: @donkey.owner_id }
    end

    assert_redirected_to donkey_path(assigns(:donkey))
  end

  test "should show donkey" do
    get :show, id: @donkey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donkey
    assert_response :success
  end

  test "should update donkey" do
    patch :update, id: @donkey, donkey: { breed_id: @donkey.breed_id, dob: @donkey.dob, med_cond: @donkey.med_cond, name: @donkey.name, owner_id: @donkey.owner_id }
    assert_redirected_to donkey_path(assigns(:donkey))
  end

  test "should destroy donkey" do
    assert_difference('Donkey.count', -1) do
      delete :destroy, id: @donkey
    end

    assert_redirected_to donkeys_path
  end
end
