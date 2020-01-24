class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.date :from_start
      t.date :to_end
      t.references :farmer_instrument
      t.references :farmer
      t.timestamps
    end
  end
end
