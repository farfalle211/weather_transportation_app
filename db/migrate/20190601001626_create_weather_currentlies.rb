class CreateWeatherCurrentlies < ActiveRecord::Migration[5.2]
  def change
    create_table :weather_currentlies do |t|
      t.integer :city_id
      t.integer :temperature
      t.decimal :precipitation_probability, precision: 3, scale: 2
      t.string :summary
      t.string :precipitation_type
      t.string :icon

      t.timestamps
    end
  end
end
