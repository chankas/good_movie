class Movie < ApplicationRecord

  has_many :category_movies
  has_many :categories, through: :category_movies

  validates :title, presence: true
  validates :original_title, presence: true
  validates :overview, presence: true
  validates :release_date, presence: true
  
end
