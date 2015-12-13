class ConteosController < ApplicationController
  def index
    @conteos = Conteo.order(:dia)
  end

  def new
    @conteo = Conteo.new
  end

  def create
    @conteo = Conteo.new(params_conteo)
    @conteo.save or return render('new')
    redirect_to conteos_path
  end
  
  def edit
    @conteo = Conteo.find(params[:id])
  end

  private

  def params_conteo
    params.require(:conteo).permit(:dia, :loc_core, :loc_total)
  end
end
