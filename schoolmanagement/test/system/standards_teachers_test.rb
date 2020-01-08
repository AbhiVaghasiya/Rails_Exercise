require "application_system_test_case"

class StandardsTeachersTest < ApplicationSystemTestCase
  setup do
    @standards_teacher = standards_teachers(:one)
  end

  test "visiting the index" do
    visit standards_teachers_url
    assert_selector "h1", text: "Standards Teachers"
  end

  test "creating a Standards teacher" do
    visit standards_teachers_url
    click_on "New Standards Teacher"

    fill_in "Standard id", with: @standards_teacher.standard_id_id
    fill_in "Teacher id", with: @standards_teacher.teacher_id_id
    click_on "Create Standards teacher"

    assert_text "Standards teacher was successfully created"
    click_on "Back"
  end

  test "updating a Standards teacher" do
    visit standards_teachers_url
    click_on "Edit", match: :first

    fill_in "Standard id", with: @standards_teacher.standard_id_id
    fill_in "Teacher id", with: @standards_teacher.teacher_id_id
    click_on "Update Standards teacher"

    assert_text "Standards teacher was successfully updated"
    click_on "Back"
  end

  test "destroying a Standards teacher" do
    visit standards_teachers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Standards teacher was successfully destroyed"
  end
end
