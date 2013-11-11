class AddVisitIdToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :visit_id, :integer
  end
end
