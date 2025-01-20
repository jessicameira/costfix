class CreateBalances < ActiveRecord::Migration[8.0]
  def change
    create_table :balances do |t|
      t.string :description
      t.decimal :amount, precision: 10, scale: 2
      t.string :type
      t.date :date_occurred
      t.date :date_overdue
      t.timestamps
    end
  end
end
