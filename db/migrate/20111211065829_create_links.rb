class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.integer :score
      t.references :target
      t.boolean :valitaded

      t.timestamps
    end
    add_index :links, :target_id
  end
end
