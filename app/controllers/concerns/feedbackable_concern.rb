# include Feedbackable
#
# Use this on controller actions that need to make a service feedback
# form available.
#
# Example usage:
#
# include FeedbackableConcern
# gather_feedback_for service: :booked_appointment
#
# <%= service_feedback_form %> in the view
module FeedbackableConcern
  extend ActiveSupport::Concern

  included do
    before_action :find_service_feedback
  end

  def find_service_feedback
    @service_feedback = self.class.service_feedback
  end

  module ClassMethods
    attr_reader :service_feedback

    private

    def gather_feedback_for(options = {})
      @service_feedback = ServiceFeedback.new(service: options[:service])
    end
  end
end
