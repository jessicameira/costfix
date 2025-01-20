class AddReferenceBalance < ActiveRecord::Migration[8.0]
  def change
    add_reference :balances, :user, foreign_key: true
  end
end
