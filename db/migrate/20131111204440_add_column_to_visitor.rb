class AddColumnToVisitor < ActiveRecord::Migration
  def change
    add_column :visitors, :visit_id, :integer
  end
end
