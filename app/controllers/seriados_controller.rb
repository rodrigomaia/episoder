class SeriadosController < ApplicationController
  def index
    @seriados = Seriado.paginate(:page => params[:page], :per_page => 5).order("nome")
  end
  
  def new
    @seriado = Seriado.new
  end
  
  def create
    @seriado = Seriado.new(params[:seriado])
    
    if @seriado.save
      redirect_to seriados_url
    else
      render :action => :new
    end
  end
  
  def edit
    @seriado = Seriado.find(params[:id])
  end
  
  def update
    @seriado = Seriado.find(params[:id])
    
    if @seriado.update_attributes(params[:seriado])
      redirect_to seriados_url
    else
      render :action => :edit
    end
  end

  def destroy
    @seriado = Seriado.find(params[:id])
    @seriado.destroy
    redirect_to seriados_url
  end
  
  def buscar
    @termo = params[:termo]
    @seriados = Seriado.where("nome like '%#{@termo}%'").order("nome")
    render :action => :index
  end

end