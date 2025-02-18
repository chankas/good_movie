module Favoritable  
  extend ActiveSupport::Concern

  included do

    has_many :favorites, dependent: :destroy
    
    def is_favorite?
      favorites.find_by(user: Current.user).present?
    end

    def favorite!
      favorites.create!
    end

    def unfavorite!
      favorites.find_by(user: Current.user).destroy!
    end
  end

end