class Category < ApplicationRecord

  has_many :category_movies
  has_many :movies, through: :category_movies

  validates :name, presence: true

end
