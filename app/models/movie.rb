class Movie < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_fulltext,
    against: {
      title: "A",
      original_title: "B",
      overview: "C"
  }
    
  has_many :category_movies
  has_many :categories, through: :category_movies

  validates :title, presence: true
  validates :original_title, presence: true
  validates :overview, presence: true
  validates :release_date, presence: true
  
end
