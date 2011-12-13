class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.string :sex
      t.integer :score
      t.boolean :validated

      t.timestamps
    end
  end
end
