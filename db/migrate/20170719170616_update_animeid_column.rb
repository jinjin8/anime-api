class UpdateAnimeidColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :characters, :anime_id, :cartoon_id
  end
end
