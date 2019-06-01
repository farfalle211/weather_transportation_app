class CreateWeatherHours < ActiveRecord::Migration[5.2]
  def change
    create_table :weather_hours do |t|
      t.integer :city_id
      t.integer :temperature
      t.decimal :precipitation_probability, precision: 3, scale: 2
      t.string :icon
      t.string :summary
      t.text :longer_summery
      t.string :precipitation_type

      t.timestamps
    end
  end
end
