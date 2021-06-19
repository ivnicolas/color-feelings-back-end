class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.string :name
      t.string :hex_code
      t.integer :likes
      t.belongs_to :feeling, null: false, foreign_key: true

      t.timestamps
    end
  end
end
