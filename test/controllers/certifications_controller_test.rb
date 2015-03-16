require 'test_helper'

class CertificationsControllerTest < ActionController::TestCase
  setup do
    @certification = certifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certification" do
    assert_difference('Certification.count') do
      post :create, certification: { certification_description: @certification.certification_description, certification_expiry: @certification.certification_expiry, certification_issued: @certification.certification_issued, certification_name: @certification.certification_name, certification_provider: @certification.certification_provider, certification_type: @certification.certification_type, user_id: @certification.user_id }
    end

    assert_redirected_to certification_path(assigns(:certification))
  end

  test "should show certification" do
    get :show, id: @certification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certification
    assert_response :success
  end

  test "should update certification" do
    patch :update, id: @certification, certification: { certification_description: @certification.certification_description, certification_expiry: @certification.certification_expiry, certification_issued: @certification.certification_issued, certification_name: @certification.certification_name, certification_provider: @certification.certification_provider, certification_type: @certification.certification_type, user_id: @certification.user_id }
    assert_redirected_to certification_path(assigns(:certification))
  end

  test "should destroy certification" do
    assert_difference('Certification.count', -1) do
      delete :destroy, id: @certification
    end

    assert_redirected_to certifications_path
  end
end
