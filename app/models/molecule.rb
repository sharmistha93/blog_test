class Molecule < ApplicationRecord
  def next_molecule
      all_molecules = Molecule.all
      current_molecule_index = all_molecules.index(self)
      all_molecules[current_molecule_index + 1]
  end

  def first_molecule
    all_molecules = Molecule.all
    all_molecules[0]
  end
end
