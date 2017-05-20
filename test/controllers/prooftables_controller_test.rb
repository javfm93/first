require 'test_helper'

class ProoftablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prooftable = prooftables(:one)
  end

  test "should get index" do
    get prooftables_url
    assert_response :success
  end

  test "should get new" do
    get new_prooftable_url
    assert_response :success
  end

  test "should create prooftable" do
    assert_difference('Prooftable.count') do
      post prooftables_url, params: { prooftable: { name: @prooftable.name, table: @prooftable.table } }
    end

    assert_redirected_to prooftable_url(Prooftable.last)
  end

  test "should show prooftable" do
    get prooftable_url(@prooftable)
    assert_response :success
  end

  test "should get edit" do
    get edit_prooftable_url(@prooftable)
    assert_response :success
  end

  test "should update prooftable" do
    patch prooftable_url(@prooftable), params: { prooftable: { name: @prooftable.name, table: @prooftable.table } }
    assert_redirected_to prooftable_url(@prooftable)
  end

  test "should destroy prooftable" do
    assert_difference('Prooftable.count', -1) do
      delete prooftable_url(@prooftable)
    end

    assert_redirected_to prooftables_url
  end
end
