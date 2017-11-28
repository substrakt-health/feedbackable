class ServiceFeedbacksController < ApplicationController
  def new
    @service_feedback = ServiceFeedback.new(service: params[:service])
  end

  def create
    @service_feedback = ServiceFeedback.create(service_feedbacks_params)
  end

  def update
    @service_feedback = ServiceFeedback.find(params[:id])
    @service_feedback.update(service_feedbacks_update_params)
  end

  private

  def service_feedbacks_params
    params.require(:service_feedback).permit(:score, :comments, :service)
  end

  def service_feedbacks_update_params
    params.require(:service_feedback).permit(:comments)
  end
end
