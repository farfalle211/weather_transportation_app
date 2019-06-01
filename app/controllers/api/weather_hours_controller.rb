class Api::WeatherHoursController < ApplicationController
  def index
    @weather_hours = WeatherHour.all
    render 'index.json.jbuilder'
  end
  
  def create
    @weather_hour = WeatherHour.new(
                       city_id: params[:city_id]
                       temperature: params[:temperature]
                       precipitation_probability: params[:precipitation_probability]
                       icon: params[:icon]
                       summary: params[:summary]
                       longer_summary: params[:longer_summary]
                       precipitation_type: params[:precipitation_type]
                      )

    if @weather_hour.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @weather_hour.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @weather_hour = WeatherHour.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @weather_hour = WeatherHour.find(params[:id])

    @weather_hour.city_id = params[:city_id] || @weather_hour.city_id
    @weather_hour.temperature = params[:temperature] || @weather_hour.temperature
    @weather_hour.precipitation_probability = params[:precipitation_probability] || @weather_hour.precipitation_probability
    @weather_hour.icon = params[:icon] || @weather_hour.icon
    @weather_hour.summary = params[:summary] || @weather_hour.summary
    @weather_hour.longer_summary = params[:longer_summary] || @weather_hour.longer_summary
    @weather_hour.precipitation_type = params[:precipitation_type] || @weather_hour.precipitation_type

    if @weather_hour.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @weather_hour.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    weather_hour = WeatherHour.find(params[:id])
    weather_hour.destroy
    render json: {message: "WeatherHour destroyed successfully"}
  end
end
