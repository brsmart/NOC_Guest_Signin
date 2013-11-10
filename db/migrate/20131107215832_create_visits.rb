class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :company
      t.string :phone
      t.string :email
      t.text :notes
      t.datetime :time_in
      t.datetime :time_out

      t.timestamps
    end
  end
end
