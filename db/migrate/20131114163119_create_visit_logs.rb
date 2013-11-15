class CreateVisitLogs < ActiveRecord::Migration
  def change
    create_table :visit_logs do |t|
      t.text :note

      t.timestamps
    end
  end
end
