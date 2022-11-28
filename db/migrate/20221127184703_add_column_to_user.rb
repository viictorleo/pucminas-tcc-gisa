class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :perfil, :string
    add_column :users, :status, :string, default: "Ativo"
    add_column :users, :nome, :string
  end
end
