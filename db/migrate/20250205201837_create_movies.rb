class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :original_title
      t.text :overview
      t.date :release_date
      t.string :poster_path
      t.string :original_language
      t.timestamps
    end
  end
end
