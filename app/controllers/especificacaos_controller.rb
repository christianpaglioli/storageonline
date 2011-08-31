class EspecificacaosController < ApplicationController
  # GET /especificacaos
  # GET /especificacaos.xml
  def index
    @especificacaos = Especificacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @especificacaos }
    end
  end

  # GET /especificacaos/1
  # GET /especificacaos/1.xml
  def show
    @especificacao = Especificacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @especificacao }
    end
  end

  # GET /especificacaos/new
  # GET /especificacaos/new.xml
  def new
    @especificacao = Especificacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @especificacao }
    end
  end

  # GET /especificacaos/1/edit
  def edit
    @especificacao = Especificacao.find(params[:id])
  end

  # POST /especificacaos
  # POST /especificacaos.xml
  def create
    @especificacao = Especificacao.new(params[:especificacao])

    respond_to do |format|
      if @especificacao.save
        flash[:notice] = 'Especificacao was successfully created.'
        format.html { redirect_to(@especificacao) }
        format.xml  { render :xml => @especificacao, :status => :created, :location => @especificacao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @especificacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /especificacaos/1
  # PUT /especificacaos/1.xml
  def update
    @especificacao = Especificacao.find(params[:id])

    respond_to do |format|
      if @especificacao.update_attributes(params[:especificacao])
        flash[:notice] = 'Especificacao was successfully updated.'
        format.html { redirect_to(@especificacao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @especificacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /especificacaos/1
  # DELETE /especificacaos/1.xml
  def destroy
    @especificacao = Especificacao.find(params[:id])
    @especificacao.destroy

    respond_to do |format|
      format.html { redirect_to(especificacaos_url) }
      format.xml  { head :ok }
    end
  end
end
