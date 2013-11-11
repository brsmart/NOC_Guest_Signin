class RemoveColumnFromVisit < ActiveRecord::Migration
  def change
    remove_column :visits, :visit_id, :integer
  end
end
