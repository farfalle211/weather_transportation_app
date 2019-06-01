class ChangeLongerSummaryOnWeatherHours < ActiveRecord::Migration[5.2]
  def change
    rename_column :weather_hours, :longer_summery, :longer_summary
  end
end
