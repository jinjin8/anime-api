class UpdateAnime < ActiveRecord::Migration[5.1]
  def change
    rename_table :anime, :animes
  end
end
