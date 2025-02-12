class CreateCategoyMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :category_movies do |t|
      t.belongs_to :category
      t.belongs_to :movie
      t.timestamps
    end
  end
end
