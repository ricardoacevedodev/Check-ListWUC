require 'test_helper'

class ListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list = lists(:one)
  end

  test "should get index" do
    get lists_url
    assert_response :success
  end

  test "should get new" do
    get new_list_url
    assert_response :success
  end

  test "should create list" do
    assert_difference('List.count') do
      post lists_url, params: { list: { ABInternalControl: @list.ABInternalControl, EWR: @list.EWR, FinalLogSheetUpdate: @list.FinalLogSheetUpdate, InitialSheetUpdate: @list.InitialSheetUpdate, PerformanceTest: @list.PerformanceTest, PhotoRecived: @list.PhotoRecived, Plataform: @list.Plataform, QRD: @list.QRD, Scanning: @list.Scanning, TearDownFormat: @list.TearDownFormat, Unit: @list.Unit } }
    end

    assert_redirected_to list_url(List.last)
  end

  test "should show list" do
    get list_url(@list)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_url(@list)
    assert_response :success
  end

  test "should update list" do
    patch list_url(@list), params: { list: { ABInternalControl: @list.ABInternalControl, EWR: @list.EWR, FinalLogSheetUpdate: @list.FinalLogSheetUpdate, InitialSheetUpdate: @list.InitialSheetUpdate, PerformanceTest: @list.PerformanceTest, PhotoRecived: @list.PhotoRecived, Plataform: @list.Plataform, QRD: @list.QRD, Scanning: @list.Scanning, TearDownFormat: @list.TearDownFormat, Unit: @list.Unit } }
    assert_redirected_to list_url(@list)
  end

  test "should destroy list" do
    assert_difference('List.count', -1) do
      delete list_url(@list)
    end

    assert_redirected_to lists_url
  end
end
