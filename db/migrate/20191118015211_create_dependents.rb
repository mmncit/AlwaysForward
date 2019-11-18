class CreateDependents < ActiveRecord::Migration[5.2]
  def change
    create_table :dependents do |t|
      t.string :name
      t.string :cell_phone
      t.string :employer

      t.timestamps
    end
  end
end
