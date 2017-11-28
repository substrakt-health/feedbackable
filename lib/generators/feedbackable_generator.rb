class FeedbackableGenerator < Rails::Generators::Base
  desc 'This generator installs the required migrations and runs them for Feedbackable'
  def install_feedbackable
    create_file 'app/models/service_feedback.rb',
    <<~EOF
      class ServiceFeedback < ApplicationRecord
        enum service: [:test]

        def question_text
          I18n.t("activerecord.models.service_feedback.question_text.\#{service}")
        end
      end
    EOF
    generate 'migration', 'create_service_feedbacks score:integer comments:text service:integer created_at:datetime updated_at:datetime'
    rake 'db:migrate'
    initializer 'feedbackable.rb' do
      "include ServiceFeedbacksHelper"
    end
  end
end
