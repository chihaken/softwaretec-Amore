class Id < ActiveRecord::Migration[5.1]
  def change
	add_column :account_informations, :accountId, :string
  end
end
