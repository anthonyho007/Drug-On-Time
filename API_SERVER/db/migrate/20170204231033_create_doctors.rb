class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :doctor_u_id
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
