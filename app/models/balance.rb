class Balance < ApplicationRecord
  validates :amount, :type_balance, :date_overdue, presence: true
end
