class CreateCharactersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :anime_id
      t.text :powers, array: true, default: []

      t.timestamps
    end
  end
end
