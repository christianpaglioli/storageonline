class SegmentosController < ApplicationController
  # GET /segmentos
  # GET /segmentos.xml
  def index
    @segmentos = Segmento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @segmentos }
    end
  end

  # GET /segmentos/1
  # GET /segmentos/1.xml
  def show
    @segmento = Segmento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @segmento }
    end
  end

  # GET /segmentos/new
  # GET /segmentos/new.xml
  def new
    @segmento = Segmento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @segmento }
    end
  end

  # GET /segmentos/1/edit
  def edit
    @segmento = Segmento.find(params[:id])
  end

  # POST /segmentos
  # POST /segmentos.xml
  def create
    @segmento = Segmento.new(params[:segmento])

    respond_to do |format|
      if @segmento.save
        flash[:notice] = 'Segmento was successfully created.'
        format.html { redirect_to(@segmento) }
        format.xml  { render :xml => @segmento, :status => :created, :location => @segmento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @segmento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /segmentos/1
  # PUT /segmentos/1.xml
  def update
    @segmento = Segmento.find(params[:id])

    respond_to do |format|
      if @segmento.update_attributes(params[:segmento])
        flash[:notice] = 'Segmento was successfully updated.'
        format.html { redirect_to(@segmento) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @segmento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /segmentos/1
  # DELETE /segmentos/1.xml
  def destroy
    @segmento = Segmento.find(params[:id])
    @segmento.destroy

    respond_to do |format|
      format.html { redirect_to(segmentos_url) }
      format.xml  { head :ok }
    end
  end
end
