class CreateBadges < ActiveRecord::Migration[6.1]
  def change
    create_table :badges do |t|
      t.string :description
      t.boolean :status

      t.timestamps
    end
  end
end
