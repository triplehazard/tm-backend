class CreateRegularTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :regular_tasks do |t|
      t.integer :time_estimate
      t.date :deadline
      t.boolean :splittable

      t.timestamps
    end
  end
end
