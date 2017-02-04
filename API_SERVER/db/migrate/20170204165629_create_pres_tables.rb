class CreatePresTables < ActiveRecord::Migration[5.0]
  def change
    create_table :pres_tables do |t|
      t.string :pres_name
      t.date :pres_date
      t.integer :num_p_day
      t.integer :amount_time
      t.integer :duration
      t.string :number_id

      t.timestamps
    end
  end
end
