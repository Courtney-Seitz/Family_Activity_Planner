class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :location
      t.string :date
      t.string :note
      t.references :member, index: true, foreign_key: true

      t.timestamps
    end
  end
end
