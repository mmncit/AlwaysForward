class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :clinic
      t.string :name
      t.string :home_phone
      t.string :cell_phone
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :employer

      t.timestamps
    end
  end
end
