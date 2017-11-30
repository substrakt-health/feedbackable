require 'test_helper'

class Feedbackable::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Feedbackable
  end

  test 'FeedbackableConcern is available' do
    assert_kind_of Module, FeedbackableConcern
  end

  test 'ServiceFeedbacksHelper is available' do
    assert_kind_of Module, ServiceFeedbacksHelper
  end

  test 'ServiceFeedback model is available' do
    assert_kind_of ServiceFeedback, ServiceFeedback.new
  end
end
