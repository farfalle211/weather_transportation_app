class CreateWeatherDays < ActiveRecord::Migration[5.2]
  def change
    create_table :weather_days do |t|
      t.integer :city_id
      t.integer :temperature
      t.string :day
      t.string :icon
      t.string :summary
      t.text :longer_summary
      t.decimal :precipitation_probability, precision: 3, scale: 2
      t.string :precipitation_type
      t.integer :temperature_high
      t.integer :temperature_low

      t.timestamps
    end
  end
end
