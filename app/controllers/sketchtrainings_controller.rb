class SketchtrainingsController < ApplicationController


		def index
  		@sketchtrainings = Sketchtraining.all

  	end

  	def new
			@sketchtrainings = Sketchtraining.all
			@sketchtraining = Sketchtraining.new
  	end



  	def create
			puts "sketchtraining create hit"
  		t = Sketchtraining.new
			t.cosineStartAngle = ActiveSupport::JSON.decode(params["cosineStartAngle"])
			t.sineStartAngle = ActiveSupport::JSON.decode(params["sineStartAngle"])
			t.bbDiagLen = ActiveSupport::JSON.decode(params["BBDiagLen"])
			t.bbDiagAngle = ActiveSupport::JSON.decode(params["BBDiagAngle"])
			t.startEndDist = ActiveSupport::JSON.decode(params["startEndDist"])
			t.startEndCosineAngle = ActiveSupport::JSON.decode(params["startEndCosineAngle"])
			t. startEndSineAngle = ActiveSupport::JSON.decode(params["startEndSineAngle"])
			t. strokeLength = ActiveSupport::JSON.decode(params["strokeLength"])
			t.angleTrav9 = ActiveSupport::JSON.decode(params["angleTrav9"])
			t.angleTrav10 = ActiveSupport::JSON.decode(params["angleTrav10"])
			t.angleTrav11 = ActiveSupport::JSON.decode(params["angleTrav11"])
			t.maxSpeed = ActiveSupport::JSON.decode(params["maxSpeed"])
			t.pathDuration = ActiveSupport::JSON.decode(params["pathDuration"])
			t.interpretation = params["interpretation"]
			t.save

			@result = t.cosineStartAngle
			puts "#{t.interpretation} saved"
			render json: @result

		end

		def sketchtraining_params
  		params.require(:sketchtraining).permit(:interpretation)
  	end


end
