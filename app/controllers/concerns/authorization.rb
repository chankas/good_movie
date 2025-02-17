module Authorization
  extend ActiveSupport::Concern

  included do
    class NotAutorized < StandardError; end

    rescue_from NotAutorized do
      redirect_to movies_path, alert: t('common.not_allowed')
    end

    private
    
    def authorize! record = nil
      is_allowed = "#{controller_name.singularize}Policy".classify.constantize.new(record).send(action_name)
      raise NotAutorized unless is_allowed
    end
  end
end