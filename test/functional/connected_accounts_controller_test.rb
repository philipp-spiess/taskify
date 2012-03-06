require 'test_helper'

class ConnectedAccountsControllerTest < ActionController::TestCase
  setup do
    @connected_account = connected_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:connected_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create connected_account" do
    assert_difference('ConnectedAccount.count') do
      post :create, connected_account: @connected_account.attributes
    end

    assert_redirected_to connected_account_path(assigns(:connected_account))
  end

  test "should show connected_account" do
    get :show, id: @connected_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @connected_account
    assert_response :success
  end

  test "should update connected_account" do
    put :update, id: @connected_account, connected_account: @connected_account.attributes
    assert_redirected_to connected_account_path(assigns(:connected_account))
  end

  test "should destroy connected_account" do
    assert_difference('ConnectedAccount.count', -1) do
      delete :destroy, id: @connected_account
    end

    assert_redirected_to connected_accounts_path
  end
end
