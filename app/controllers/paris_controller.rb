class ParisController < ApplicationController

  def index
  @arrondissements = Pari.all
  end

end
