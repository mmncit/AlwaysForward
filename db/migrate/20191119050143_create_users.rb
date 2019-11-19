class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
