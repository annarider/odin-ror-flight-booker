class AddEmailToPassenger < ActiveRecord::Migration[8.0]
  def change
    add_column :passengers, :email, :string, null: false
  end
end
