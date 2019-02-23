class TechniquesController < ApplicationController
  def index
    @techniques = Technique.all
  end

  def new
    @techniques = Technique.all
    @techniques = Technique.new
  end

  def create
    puts "technique create hit"
    t = Technique.new
    t.session = params["id"]
    t.molecule = params["molecule"]
    t.techType = params["type"]
    t.time = params["time"]

    t.save

    @result = t.techType
    puts "#{t.techType} saved"
    render json: @result
  end
end
