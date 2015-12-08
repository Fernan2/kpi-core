class ConteosController < ApplicationController
  def index
    @conteos = Conteo.order(:fecha)
  end

  def new
    @conteo = Conteo.new
  end
end
