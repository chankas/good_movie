class AddVoteAverageToMovie < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :vote_average, :float, default: 0.0
  end
end
