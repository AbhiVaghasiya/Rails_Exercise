require 'test_helper'

class StandardsTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standards_teacher = standards_teachers(:one)
  end

  test "should get index" do
    get standards_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_standards_teacher_url
    assert_response :success
  end

  test "should create standards_teacher" do
    assert_difference('StandardsTeacher.count') do
      post standards_teachers_url, params: { standards_teacher: { standard_id_id: @standards_teacher.standard_id_id, teacher_id_id: @standards_teacher.teacher_id_id } }
    end

    assert_redirected_to standards_teacher_url(StandardsTeacher.last)
  end

  test "should show standards_teacher" do
    get standards_teacher_url(@standards_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_standards_teacher_url(@standards_teacher)
    assert_response :success
  end

  test "should update standards_teacher" do
    patch standards_teacher_url(@standards_teacher), params: { standards_teacher: { standard_id_id: @standards_teacher.standard_id_id, teacher_id_id: @standards_teacher.teacher_id_id } }
    assert_redirected_to standards_teacher_url(@standards_teacher)
  end

  test "should destroy standards_teacher" do
    assert_difference('StandardsTeacher.count', -1) do
      delete standards_teacher_url(@standards_teacher)
    end

    assert_redirected_to standards_teachers_url
  end
end
