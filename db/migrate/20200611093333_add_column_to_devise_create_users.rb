class AddColumnToDeviseCreateUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :nickname, :string
  end

  def down
    remove_column :users, :nickname, :string
  end
end
