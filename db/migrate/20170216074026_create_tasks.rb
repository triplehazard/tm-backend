class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
