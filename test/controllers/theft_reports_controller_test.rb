require 'test_helper'

class TheftReportsControllerTest < ActionController::TestCase
  setup do
    @theft_report = theft_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:theft_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create theft_report" do
    assert_difference('TheftReport.count') do
      post :create, theft_report: { bike_data: @theft_report.bike_data, location: @theft_report.location, theft_date: @theft_report.theft_date, theft_way: @theft_report.theft_way }
    end

    assert_redirected_to theft_report_path(assigns(:theft_report))
  end

  test "should show theft_report" do
    get :show, id: @theft_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @theft_report
    assert_response :success
  end

  test "should update theft_report" do
    patch :update, id: @theft_report, theft_report: { bike_data: @theft_report.bike_data, location: @theft_report.location, theft_date: @theft_report.theft_date, theft_way: @theft_report.theft_way }
    assert_redirected_to theft_report_path(assigns(:theft_report))
  end

  test "should destroy theft_report" do
    assert_difference('TheftReport.count', -1) do
      delete :destroy, id: @theft_report
    end

    assert_redirected_to theft_reports_path
  end
end
