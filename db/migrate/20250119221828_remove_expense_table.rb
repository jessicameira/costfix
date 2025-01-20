class RemoveExpenseTable < ActiveRecord::Migration[8.0]
  def change
    drop_table :expenses
  end
end
