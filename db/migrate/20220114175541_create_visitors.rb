class CreateVisitors < ActiveRecord::Migration[6.1]
  def change
    create_table :visitors do |t|
      t.string :photo
      t.string :description
      t.string :cpf
      t.string :genre
      t.string :telephone
      t.references :badge, null: false, foreign_key: true
      t.references :sector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
