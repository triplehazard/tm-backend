class CreateFixedTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :fixed_tasks do |t|

      t.timestamps
    end
  end
end
