class CreateScps < ActiveRecord::Migration[8.0]
  def change
    create_table :scps do |t|
      t.integer :item_number
      t.string :classification

      t.timestamps
    end
  end
end
