class AddColumnToVisitor < ActiveRecord::Migration
  def change
    add_column :visitors, :visit_id, :integer
    remove_column :visit, :visit_id
  end
end
