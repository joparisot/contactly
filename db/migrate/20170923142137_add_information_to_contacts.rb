class AddInformationToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :phone_number, :string
    add_column :contacts, :email, :string
  end
end
