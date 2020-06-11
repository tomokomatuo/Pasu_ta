class CreateStylists < ActiveRecord::Migration[5.2]
  def change
    create_table :stylists do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.integer :age, defalut: 0
      t.integer :gender, defalut: 0
      t.text :content
      t.text :icon
      t.text :clothes_image
      t.references  :user,  index: true, foreign_key: true

      t.timestamps
    end
  end
end
