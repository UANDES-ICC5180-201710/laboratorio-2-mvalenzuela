require 'test_helper'

class PeopleCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @people_course = people_courses(:one)
  end

  test "should get index" do
    get people_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_people_course_url
    assert_response :success
  end

  test "should create people_course" do
    assert_difference('PeopleCourse.count') do
      post people_courses_url, params: { people_course: { course_id: @people_course.course_id, person_id: @people_course.person_id } }
    end

    assert_redirected_to people_course_url(PeopleCourse.last)
  end

  test "should show people_course" do
    get people_course_url(@people_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_people_course_url(@people_course)
    assert_response :success
  end

  test "should update people_course" do
    patch people_course_url(@people_course), params: { people_course: { course_id: @people_course.course_id, person_id: @people_course.person_id } }
    assert_redirected_to people_course_url(@people_course)
  end

  test "should destroy people_course" do
    assert_difference('PeopleCourse.count', -1) do
      delete people_course_url(@people_course)
    end

    assert_redirected_to people_courses_url
  end
end
