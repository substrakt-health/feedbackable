class ServiceFeedback < ApplicationRecord
  enum service: [:test]

  def question_text
    I18n.t("activerecord.models.service_feedback.question_text.#{service}")
  end
end
