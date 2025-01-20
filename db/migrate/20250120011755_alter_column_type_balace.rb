class AlterColumnTypeBalace < ActiveRecord::Migration[8.0]
  def change
    rename_column :balances, :type, :type_balance
  end
end
