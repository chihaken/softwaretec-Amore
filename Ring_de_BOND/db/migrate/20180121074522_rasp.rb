class Rasp < ActiveRecord::Migration[5.1]
  def change
	add_column :account_informations, :time, :integer
	add_column :account_informations, :rasId, :integer
  end
end
