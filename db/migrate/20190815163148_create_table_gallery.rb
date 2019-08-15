class CreateTableGallery < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.integer :user_id
      t.integer :piece_id
    end
  end
end
