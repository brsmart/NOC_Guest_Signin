class VisitIdChange < ActiveRecord::Migration
  def change
    remove_column :visits
  end
end
