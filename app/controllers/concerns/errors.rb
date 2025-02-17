module Errors extend ActiveSupport::Concern
  included do
    rescue_from ActiveRecord::RecordNotFound do
      redirect_to movies_path, alert: t('common.record_not_found')
    end
  end
  
end