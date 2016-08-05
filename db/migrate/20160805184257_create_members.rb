class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :date_of_birth
      t.string :img_url
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
