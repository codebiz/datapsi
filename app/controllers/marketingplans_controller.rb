class MarketingplansController < ApplicationController
  # GET /marketingplans
  # GET /marketingplans.json
  def index
    @marketingplans = Marketingplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @marketingplans }
    end
  end

  # GET /marketingplans/1
  # GET /marketingplans/1.json
  def show
    @marketingplan = Marketingplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @marketingplan }
    end
  end

  # GET /marketingplans/new
  # GET /marketingplans/new.json
  def new
    @marketingplan = Marketingplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @marketingplan }
    end
  end

  # GET /marketingplans/1/edit
  def edit
    @marketingplan = Marketingplan.find(params[:id])
  end

  # POST /marketingplans
  # POST /marketingplans.json
  def create
    @marketingplan = Marketingplan.new(params[:marketingplan])

    respond_to do |format|
      if @marketingplan.save
        format.html { redirect_to @marketingplan, :notice => 'Marketingplan was successfully created.' }
        format.json { render :json => @marketingplan, :status => :created, :location => @marketingplan }
      else
        format.html { render :action => "new" }
        format.json { render :json => @marketingplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /marketingplans/1
  # PUT /marketingplans/1.json
  def update
    @marketingplan = Marketingplan.find(params[:id])

    respond_to do |format|
      if @marketingplan.update_attributes(params[:marketingplan])
        format.html { redirect_to @marketingplan, :notice => 'Marketingplan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @marketingplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /marketingplans/1
  # DELETE /marketingplans/1.json
  def destroy
    @marketingplan = Marketingplan.find(params[:id])
    @marketingplan.destroy

    respond_to do |format|
      format.html { redirect_to marketingplans_url }
      format.json { head :ok }
    end
  end
end
