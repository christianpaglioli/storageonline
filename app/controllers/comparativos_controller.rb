class ComparativosController < ApplicationController
  # GET /comparativos
  # GET /comparativos.xml
  def index
    @comparativos = Comparativo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comparativos }
    end
  end

  # GET /comparativos/1
  # GET /comparativos/1.xml
  def show
    @comparativo = Comparativo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comparativo }
    end
  end

  # GET /comparativos/new
  # GET /comparativos/new.xml
  def new
    @comparativo = Comparativo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comparativo }
    end
  end

  # GET /comparativos/1/edit
  def edit
    @comparativo = Comparativo.find(params[:id])
  end

  # POST /comparativos
  # POST /comparativos.xml
  def create
    @comparativo = Comparativo.new(params[:comparativo])

    respond_to do |format|
      if @comparativo.save
        flash[:notice] = 'Comparativo was successfully created.'
        format.html { redirect_to(@comparativo) }
        format.xml  { render :xml => @comparativo, :status => :created, :location => @comparativo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comparativo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comparativos/1
  # PUT /comparativos/1.xml
  def update
    @comparativo = Comparativo.find(params[:id])

    respond_to do |format|
      if @comparativo.update_attributes(params[:comparativo])
        flash[:notice] = 'Comparativo was successfully updated.'
        format.html { redirect_to(@comparativo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comparativo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comparativos/1
  # DELETE /comparativos/1.xml
  def destroy
    @comparativo = Comparativo.find(params[:id])
    @comparativo.destroy

    respond_to do |format|
      format.html { redirect_to(comparativos_url) }
      format.xml  { head :ok }
    end
  end
end
