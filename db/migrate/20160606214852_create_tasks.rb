class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.boolean :status, null: false, default: false

      t.timestamps
    end
  end
end
