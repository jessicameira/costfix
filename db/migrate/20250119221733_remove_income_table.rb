class RemoveIncomeTable < ActiveRecord::Migration[8.0]
  def change
    drop_table :incomes
  end
end
