class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.string :sex
      t.integer :score
      t.boolean :valitaded

      t.timestamps
    end
  end
end
