class EquipamentosController < ApplicationController
  # GET /equipamentos
  # GET /equipamentos.xml
  def index
    @equipamentos = Equipamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @equipamentos }
    end
  end

  # GET /equipamentos/1
  # GET /equipamentos/1.xml
  def show
    @equipamento = Equipamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @equipamento }
    end
  end

  # GET /equipamentos/new
  # GET /equipamentos/new.xml
  def new
    @equipamento = Equipamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @equipamento }
    end
  end

  # GET /equipamentos/1/edit
  def edit
    @equipamento = Equipamento.find(params[:id])
  end

  # POST /equipamentos
  # POST /equipamentos.xml
  def create
    @equipamento = Equipamento.new(params[:equipamento])

    respond_to do |format|
      if @equipamento.save
        flash[:notice] = 'Equipamento was successfully created.'
        format.html { redirect_to(@equipamento) }
        format.xml  { render :xml => @equipamento, :status => :created, :location => @equipamento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @equipamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /equipamentos/1
  # PUT /equipamentos/1.xml
  def update
    @equipamento = Equipamento.find(params[:id])

    respond_to do |format|
      if @equipamento.update_attributes(params[:equipamento])
        flash[:notice] = 'Equipamento was successfully updated.'
        format.html { redirect_to(@equipamento) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @equipamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /equipamentos/1
  # DELETE /equipamentos/1.xml
  def destroy
    @equipamento = Equipamento.find(params[:id])
    @equipamento.destroy

    respond_to do |format|
      format.html { redirect_to(equipamentos_url) }
      format.xml  { head :ok }
    end
  end
end
