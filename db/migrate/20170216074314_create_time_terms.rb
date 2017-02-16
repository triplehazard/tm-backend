class CreateTimeTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :time_terms do |t|
      t.date :start_time
      t.date :end_time
      t.integer :preparation_time
      t.references :task, foreign_key: true
      t.references :calendar, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
