class Movie < ApplicationRecord

  validates :title, presence: true
  validates :original_title, presence: true
  validates :overview, presence: true
  validates :release_date, presence: true
  
end
