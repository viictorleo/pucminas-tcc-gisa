class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :nome
      t.string :codigo
      t.string :descricao
      t.string :valor
      t.date :data_fim
      t.boolean :coparticipacao

      t.timestamps
    end
  end
end
