class ConteosController < ApplicationController
  def index
    @conteos = Conteo.order(:fecha)
  end
end
