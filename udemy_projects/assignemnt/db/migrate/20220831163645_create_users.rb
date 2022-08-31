class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birthday
      t.decimal :heigth, precision: 5, scale: 2
      t.decimal :weigth, precision: 5, scale: 2
      t.string :country, default: 'US'
      t.string :phone_number
      t.string :degree
      t.string :language
      t.string :pronouns
      t.timestamps
    end
  end
end
