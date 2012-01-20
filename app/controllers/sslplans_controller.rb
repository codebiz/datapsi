class SslplansController < ApplicationController
  # GET /sslplans
  # GET /sslplans.json
  def index
    @sslplans = Sslplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sslplans }
    end
  end

  # GET /sslplans/1
  # GET /sslplans/1.json
  def show
    @sslplan = Sslplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sslplan }
    end
  end

  # GET /sslplans/new
  # GET /sslplans/new.json
  def new
    @sslplan = Sslplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sslplan }
    end
  end

  # GET /sslplans/1/edit
  def edit
    @sslplan = Sslplan.find(params[:id])
  end

  # POST /sslplans
  # POST /sslplans.json
  def create
    @sslplan = Sslplan.new(params[:sslplan])

    respond_to do |format|
      if @sslplan.save
        format.html { redirect_to @sslplan, :notice => 'Sslplan was successfully created.' }
        format.json { render :json => @sslplan, :status => :created, :location => @sslplan }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sslplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sslplans/1
  # PUT /sslplans/1.json
  def update
    @sslplan = Sslplan.find(params[:id])

    respond_to do |format|
      if @sslplan.update_attributes(params[:sslplan])
        format.html { redirect_to @sslplan, :notice => 'Sslplan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sslplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sslplans/1
  # DELETE /sslplans/1.json
  def destroy
    @sslplan = Sslplan.find(params[:id])
    @sslplan.destroy

    respond_to do |format|
      format.html { redirect_to sslplans_url }
      format.json { head :ok }
    end
  end
end
