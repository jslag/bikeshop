class AddCompletionDateToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :estimated_completion_date, :date
  end
end
