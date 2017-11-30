require 'feedbackable/engine'
require 'inline_svg'
module Feedbackable
  require_relative '../app/controllers/concerns/feedbackable_concern'
  require_relative '../app/helpers/service_feedbacks_helper'
  mattr_accessor :services
end
