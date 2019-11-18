class CreateInsuranceCoverages < ActiveRecord::Migration[5.2]
  def change
    create_table :insurance_coverages do |t|
      t.string :employer
      t.string :insurance_company
      t.string :policy_number
      t.string :coverage_percentage
      t.string :coverage_type
      t.float :product_quantity
      t.float :maximum_amount
      t.float :coverage_frequency
      t.float :coverage_period

      t.timestamps
    end
  end
end
