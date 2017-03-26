require 'test_helper'

class PersonCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_course = person_courses(:one)
  end

  test "should get index" do
    get person_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_person_course_url
    assert_response :success
  end

  test "should create person_course" do
    assert_difference('PersonCourse.count') do
      post person_courses_url, params: { person_course: { course_id: @person_course.course_id, person_id: @person_course.person_id } }
    end

    assert_redirected_to person_course_url(PersonCourse.last)
  end

  test "should show person_course" do
    get person_course_url(@person_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_course_url(@person_course)
    assert_response :success
  end

  test "should update person_course" do
    patch person_course_url(@person_course), params: { person_course: { course_id: @person_course.course_id, person_id: @person_course.person_id } }
    assert_redirected_to person_course_url(@person_course)
  end

  test "should destroy person_course" do
    assert_difference('PersonCourse.count', -1) do
      delete person_course_url(@person_course)
    end

    assert_redirected_to person_courses_url
  end
end
