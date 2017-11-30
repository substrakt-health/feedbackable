class FeedbackableGenerator < Rails::Generators::Base
  desc 'This generator installs the required migrations and runs them for Feedbackable'
  def install_feedbackable
    generate 'migration', 'create_service_feedbacks score:integer comments:text service:integer created_at:datetime updated_at:datetime'
    rake 'db:migrate'
    initializer 'feedbackable.rb' do
      <<~EOF
        require 'feedbackable'
        include ServiceFeedbacksHelper
        Feedbackable.services = [:test]
      EOF
    end
    create_file 'config/locales/feedbackable.en.yml',
    <<~EOF
      en:
        feedbackable:
          question_text:
            service_name: How was your experience today of INSERT SERVICE NAME HERE?
            default: How was your experience today?
    EOF
  end
end
