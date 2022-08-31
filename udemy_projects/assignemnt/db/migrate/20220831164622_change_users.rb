class ChangeUsers < ActiveRecord::Migration[6.1]
  def up
    change_table :users do |t|
      t.change :country, :text
      t.change :birthday, :string
      t.change :weigth, :integer
      t.change :pronouns, :text
    end
  end

  def down
    change_table :users do |t|
      t.change :country, :string
      t.change :birthday, :datetime
      t.change :weigth, :decimal
      t.change :pronouns, :string
    end
  end
end
