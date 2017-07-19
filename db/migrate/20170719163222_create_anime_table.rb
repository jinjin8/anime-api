class CreateAnimeTable < ActiveRecord::Migration[5.1]
  def change
    create_table :anime do |t|
      t.string :name

      t.timestamps
    end
  end
end
