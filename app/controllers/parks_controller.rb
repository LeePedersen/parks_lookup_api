class ParksController < ApplicationController

  def index
    @parks = Park.all
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
    render status: 200, json: {
      message: "This park has been updated."
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
  end

  def random
    park_ids = []
    Park.all.each do |park|
      park_ids.push(park.id)
    end
    id = park_ids[rand(Park.all.length)]
    @park = Park.find(id)
    json_response(@park)
  end

  def search
    if params[:search]
      @parks = Park.all.where("lower(name) LIKE :search", search: params[:search].downcase)
      json_response(@parks)
    else
      render json: { status: "error", message: "Please pass in a park name to search for" }
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def park_params
    params.permit(:name, :location, :kind, :description)
  end
end
