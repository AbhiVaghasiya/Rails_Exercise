require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    check "Active" if @project.active
    fill_in "Description", with: @project.description
    fill_in "End date", with: @project.end_date
    fill_in "Manajor", with: @project.manajor_id
    fill_in "Strat date", with: @project.strat_date
    fill_in "Title", with: @project.title
    fill_in "Website", with: @project.website
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    check "Active" if @project.active
    fill_in "Description", with: @project.description
    fill_in "End date", with: @project.end_date
    fill_in "Manajor", with: @project.manajor_id
    fill_in "Strat date", with: @project.strat_date
    fill_in "Title", with: @project.title
    fill_in "Website", with: @project.website
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end