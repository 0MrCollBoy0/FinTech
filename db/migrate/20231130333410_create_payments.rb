class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.string :title
      t.decimal :amount
      t.references :user, null: false, foreign_key: true
      t.string :email
      t.timestamps
    end
  end
end
