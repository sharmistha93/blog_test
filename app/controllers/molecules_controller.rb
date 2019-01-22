class MoleculesController < ApplicationController

	before_action :find_molecule, only: [:show]
	before_action :train_sketch, only: [:show]

	def index
  		@molecules = Molecule.all
  end

  def show
		@numAtoms = @molecule.num_atoms
		@cenAtom = @molecule.central_atom.to_s
		@othAtoms = @molecule.other_atoms.to_s
		@fullElectrons = @molecule.fullElectrons.to_s
		@availElectrons = @molecule.availElectrons.to_s

  end

	def create

	  puts "create hit!"

		newSketch = [ActiveSupport::JSON.decode(params["cosineStartAngle"]), ActiveSupport::JSON.decode(params["sineStartAngle"]), ActiveSupport::JSON.decode(params["BBDiagLen"]), ActiveSupport::JSON.decode(params["BBDiagAngle"]), ActiveSupport::JSON.decode(params["startEndDist"]), ActiveSupport::JSON.decode(params["startEndCosineAngle"]), ActiveSupport::JSON.decode(params["startEndSineAngle"]), ActiveSupport::JSON.decode(params["strokeLength"]), ActiveSupport::JSON.decode(params["angleTrav9"]), ActiveSupport::JSON.decode(params["angleTrav10"]), ActiveSupport::JSON.decode(params["angleTrav11"]), ActiveSupport::JSON.decode(params["maxSpeed"]), ActiveSupport::JSON.decode(params["pathDuration"])]

		decision = $dec_tree.predict(newSketch)

		@result = {interp: decision}
		render json: @result

	end

	def update
		puts "update molecule"

	end

  def find_molecule
  		@molecule = Molecule.find(params[:id])
 	end

	def train_sketch
		@trainings = Sketchtraining.all

		training = []
		for t in @trainings
			newTraining = [t.cosineStartAngle, t.sineStartAngle, t.bbDiagLen, t.bbDiagAngle, t.startEndDist, t.startEndCosineAngle, t.startEndSineAngle, t.strokeLength, t.angleTrav9, t.angleTrav10, t.angleTrav11, t.maxSpeed, t.pathDuration, t.interpretation]
		  training.push(newTraining)
		end

		#train decision tree
		attributes = ['cosineStartAngle', 'sineStartAngle', 'bbDiagLen', 'bbDiagAngle', 'startEndDist', 'startEndCosineAngle', 'startEndSineAngle', 'strokeLength', 'angleTrav9', 'angleTrav10', 'angleTrav11', 'maxSpeed', 'pathDuration']

		$dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'bond', :continuous)
		trainResult = $dec_tree.train
		puts "training complete"
	end

	private
    def sketchtraining_params
      params.require(:sketchtraining).permit(:interpretation)
    end





end
