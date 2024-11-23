require "application_system_test_case"

class FeedbacksTest < ApplicationSystemTestCase
  setup do
    @feedback = feedbacks(:one)
  end

  test "visiting the index" do
    visit feedbacks_url
    assert_selector "h1", text: "Feedbacks"
  end

  test "creating a Feedback" do
    visit feedbacks_url
    click_on "New Feedback"

    fill_in "Comments", with: @feedback.comments
    fill_in "Overall rating", with: @feedback.overall_rating
    fill_in "Pc1", with: @feedback.pc1
    fill_in "Pc2", with: @feedback.pc2
    fill_in "Pc3", with: @feedback.pc3
    fill_in "Pc4", with: @feedback.pc4
    fill_in "Pd1", with: @feedback.pd1
    fill_in "Pd2", with: @feedback.pd2
    fill_in "Pd3", with: @feedback.pd3
    fill_in "Po1", with: @feedback.po1
    fill_in "Po2", with: @feedback.po2
    fill_in "Po3", with: @feedback.po3
    fill_in "Po4", with: @feedback.po4
    fill_in "Po5", with: @feedback.po5
    fill_in "Po6", with: @feedback.po6
    fill_in "Po7", with: @feedback.po7
    fill_in "Pv1", with: @feedback.pv1
    fill_in "Pv2", with: @feedback.pv2
    fill_in "Pv3", with: @feedback.pv3
    fill_in "Pv4", with: @feedback.pv4
    fill_in "Pv5", with: @feedback.pv5
    click_on "Create Feedback"

    assert_text "Feedback was successfully created"
    click_on "Back"
  end

  test "updating a Feedback" do
    visit feedbacks_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @feedback.comments
    fill_in "Overall rating", with: @feedback.overall_rating
    fill_in "Pc1", with: @feedback.pc1
    fill_in "Pc2", with: @feedback.pc2
    fill_in "Pc3", with: @feedback.pc3
    fill_in "Pc4", with: @feedback.pc4
    fill_in "Pd1", with: @feedback.pd1
    fill_in "Pd2", with: @feedback.pd2
    fill_in "Pd3", with: @feedback.pd3
    fill_in "Po1", with: @feedback.po1
    fill_in "Po2", with: @feedback.po2
    fill_in "Po3", with: @feedback.po3
    fill_in "Po4", with: @feedback.po4
    fill_in "Po5", with: @feedback.po5
    fill_in "Po6", with: @feedback.po6
    fill_in "Po7", with: @feedback.po7
    fill_in "Pv1", with: @feedback.pv1
    fill_in "Pv2", with: @feedback.pv2
    fill_in "Pv3", with: @feedback.pv3
    fill_in "Pv4", with: @feedback.pv4
    fill_in "Pv5", with: @feedback.pv5
    click_on "Update Feedback"

    assert_text "Feedback was successfully updated"
    click_on "Back"
  end

  test "destroying a Feedback" do
    visit feedbacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feedback was successfully destroyed"
  end
end
