class Favorite < ApplicationRecord
  validates :user, uniqueness: { scope: :movie }  

  belongs_to :user, default: -> { Current.user }
  belongs_to :movie


end
