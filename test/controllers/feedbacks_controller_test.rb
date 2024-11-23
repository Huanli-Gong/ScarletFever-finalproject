require 'test_helper'

class FeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feedback = feedbacks(:one)
  end

  test "should get index" do
    get feedbacks_url
    assert_response :success
  end

  test "should get new" do
    get new_feedback_url
    assert_response :success
  end

  test "should create feedback" do
    assert_difference('Feedback.count') do
      post feedbacks_url, params: { feedback: { comments: @feedback.comments, overall_rating: @feedback.overall_rating, pc1: @feedback.pc1, pc2: @feedback.pc2, pc3: @feedback.pc3, pc4: @feedback.pc4, pd1: @feedback.pd1, pd2: @feedback.pd2, pd3: @feedback.pd3, po1: @feedback.po1, po2: @feedback.po2, po3: @feedback.po3, po4: @feedback.po4, po5: @feedback.po5, po6: @feedback.po6, po7: @feedback.po7, pv1: @feedback.pv1, pv2: @feedback.pv2, pv3: @feedback.pv3, pv4: @feedback.pv4, pv5: @feedback.pv5 } }
    end

    assert_redirected_to feedback_url(Feedback.last)
  end

  test "should show feedback" do
    get feedback_url(@feedback)
    assert_response :success
  end

  test "should get edit" do
    get edit_feedback_url(@feedback)
    assert_response :success
  end

  test "should update feedback" do
    patch feedback_url(@feedback), params: { feedback: { comments: @feedback.comments, overall_rating: @feedback.overall_rating, pc1: @feedback.pc1, pc2: @feedback.pc2, pc3: @feedback.pc3, pc4: @feedback.pc4, pd1: @feedback.pd1, pd2: @feedback.pd2, pd3: @feedback.pd3, po1: @feedback.po1, po2: @feedback.po2, po3: @feedback.po3, po4: @feedback.po4, po5: @feedback.po5, po6: @feedback.po6, po7: @feedback.po7, pv1: @feedback.pv1, pv2: @feedback.pv2, pv3: @feedback.pv3, pv4: @feedback.pv4, pv5: @feedback.pv5 } }
    assert_redirected_to feedback_url(@feedback)
  end

  test "should destroy feedback" do
    assert_difference('Feedback.count', -1) do
      delete feedback_url(@feedback)
    end

    assert_redirected_to feedbacks_url
  end
end
