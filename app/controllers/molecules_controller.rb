class MoleculesController < ApplicationController

	before_action :find_molecule, only: [:show]

	def index
  		@molecules = Molecule.all
  	end

  	def show
  		@numAtoms = @molecule.num_atoms
  		@cenAtom = @molecule.central_atom.to_s
  		@othAtoms = @molecule.other_atoms.to_s

  	end

  	def find_molecule
  		@molecule = Molecule.find(params[:id])
 	end



end
