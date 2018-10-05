require 'test_helper'

class NavControllerTest < ActionDispatch::IntegrationTest
  test "should get sections" do
    get nav_sections_url
    assert_response :success
  end

  test "should get courses" do
    get nav_courses_url
    assert_response :success
  end

  test "should get students" do
    get nav_students_url
    assert_response :success
  end

  test "should get enrollments" do
    get nav_enrollments_url
    assert_response :success
  end

end
