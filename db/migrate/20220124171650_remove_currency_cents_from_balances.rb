class RemoveCurrencyCentsFromBalances < ActiveRecord::Migration[7.0]
  def change
    remove_column :balances, :currency_cents, :string
  end
end
