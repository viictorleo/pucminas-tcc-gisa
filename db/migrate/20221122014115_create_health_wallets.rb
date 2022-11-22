class CreateHealthWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :health_wallets do |t|

      t.timestamps
    end
  end
end
