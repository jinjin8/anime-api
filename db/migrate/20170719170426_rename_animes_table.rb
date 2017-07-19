class RenameAnimesTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :animes, :cartoons
  end
end
