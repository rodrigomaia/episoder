class TemporadasController < ApplicationController
  def index
    @seriado = Seriado.find(params[:seriado_id])
    @temporadas = @seriado.temporadas
  end
  
  def new
    @seriado = Seriado.find(params[:seriado_id])
    @temporada = Temporada.new(:seriado_id => @seriado.id)
  end
  
  def create
    @temporada = Temporada.new(params[:temporada])
    @seriado = Seriado.find(@temporada.seriado_id)
        
    if @temporada.save
      redirect_to seriado_temporadas_path(@seriado.id)
    else
      render :action => :new
    end
  end
end