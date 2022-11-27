class AddColumnToAuthorizationRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :authorization_requests, :paciente, :string
    add_column :authorization_requests, :procedimento, :string
    add_column :authorization_requests, :status, :string
  end
end
