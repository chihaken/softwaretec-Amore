class CreateAccountInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :account_informations do |t|
      t.string :uName
      t.string :sexial
      t.string :password_digest
      t.string :secAnsw
      t.integer :room
      t.binary :picture
      t.string :belong
      t.string :grade
      t.string :hobby
      t.string :interest
      t.string :dream
      t.string :free
      t.integer :category1
      t.integer :item1
      t.integer :category2
      t.integer :item2
      t.integer :category3
      t.integer :item3

      t.timestamps
    end
  end
end
