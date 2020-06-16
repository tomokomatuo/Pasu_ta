class AddColumnsToStylists < ActiveRecord::Migration[5.2]
  def up
    add_column :stylists, :hide_age, :boolean
    add_column :stylists, :hide_gender, :boolean
  end

  def down
    remove_column :stylists, :hide_age, :boolean
    remove_column :stylists, :hide_gender, :boolean
  end
end
