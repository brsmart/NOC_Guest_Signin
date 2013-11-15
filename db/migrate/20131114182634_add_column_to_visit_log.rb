class AddColumnToVisitLog < ActiveRecord::Migration
  def change
    add_column :visit_logs, :visit_id, :integer
  end
end
