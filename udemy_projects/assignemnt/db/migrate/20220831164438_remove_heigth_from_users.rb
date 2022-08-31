class RemoveHeigthFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :heigth
  end
end
