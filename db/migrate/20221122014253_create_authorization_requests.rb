class CreateAuthorizationRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :authorization_requests do |t|

      t.timestamps
    end
  end
end
