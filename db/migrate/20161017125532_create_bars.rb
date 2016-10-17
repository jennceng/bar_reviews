class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :cover_charge
      t.string :hours_of_operation
    end
  end
end
