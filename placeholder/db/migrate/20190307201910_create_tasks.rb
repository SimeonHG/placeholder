class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :completed_at
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
