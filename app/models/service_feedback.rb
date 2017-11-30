class ServiceFeedback < ApplicationRecord
  enum service: Feedbackable.services

  def question_text
    I18n.t("feedbackable.question_text.#{service}")
  end
end
