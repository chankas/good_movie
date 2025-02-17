class Movie < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_fulltext,
    against: {
      title: "A",
      original_title: "B",
      overview: "C"
  }

  ORDER_BY = {
    "newest": 'movies.release_date DESC', 
    "oldest": 'movies.release_date ASC', 
    "best": 'movies.vote_average DESC', 
    "worst": 'movies.vote_average ASC'
  }
    
  has_many :category_movies
  has_many :categories, through: :category_movies
  belongs_to :user

  validates :title, presence: true
  validates :original_title, presence: true
  validates :overview, presence: true
  validates :release_date, presence: true
  
end
