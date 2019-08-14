class CreateTablePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.boolean :isHighlight
      t.string :primaryImage
      t.string :primaryImageSmall
      t.string :department
      t.string :objectName
      t.string :title
      t.string :culture
      t.string :artistDisplayName
      t.string :objectDate
      t.string :medium
      t.string :dimensions
      t.string :classification
      t.string :repository
      t.string :objectURL
      t.string :tags
      t.string :country
      t.string :artistNationality
    end
  end
end
