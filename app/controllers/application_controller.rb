class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Authentication
  include Authorization
  include Localization
  include Errors

end
