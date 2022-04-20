class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :year_id,        null: false
      t.integer :month_id,       null: false
      t.integer :day_id,         null: false
      t.integer :dayofweek_id,   null: false
      t.integer :weather_id,     null: false
      t.string :title,           null: false
      t.text :sentence,          null: false
      t.timestamps
    end
  end
end