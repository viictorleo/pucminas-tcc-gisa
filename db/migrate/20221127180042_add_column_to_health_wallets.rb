class AddColumnToHealthWallets < ActiveRecord::Migration[7.0]
  def change
    add_column :health_wallets, :paciente, :string
    add_column :health_wallets, :numero, :integer
    add_column :health_wallets, :status, :string
  end
end
