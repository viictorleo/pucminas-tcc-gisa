class CreatePaciente < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :status
      t.references :health_wallet_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
