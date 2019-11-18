class PatientDependentAssociation < ActiveRecord::Migration[5.2]
  def up
    add_column("dependents", "patient_id", :integer) 
    add_column("dependents", "dependency_type", :string, :limit => 25, :after => "name")
    add_index("dependents", "patient_id")
  end
  def down
    remove_index("dependents", "patient_id")
    remove_column("dependents", "dependency_type")
    remove_column("dependents", "patient_id")
  end
end
