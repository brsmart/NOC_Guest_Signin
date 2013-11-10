class AddCompletedColumnToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :completed, :boolean, :default => false
  end
end
