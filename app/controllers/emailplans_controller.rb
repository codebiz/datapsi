class EmailplansController < ApplicationController
  # GET /emailplans
  # GET /emailplans.json
  def index
    @emailplans = Emailplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @emailplans }
    end
  end

  # GET /emailplans/1
  # GET /emailplans/1.json
  def show
    @emailplan = Emailplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @emailplan }
    end
  end

  # GET /emailplans/new
  # GET /emailplans/new.json
  def new
    @emailplan = Emailplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @emailplan }
    end
  end

  # GET /emailplans/1/edit
  def edit
    @emailplan = Emailplan.find(params[:id])
  end

  # POST /emailplans
  # POST /emailplans.json
  def create
    @emailplan = Emailplan.new(params[:emailplan])

    respond_to do |format|
      if @emailplan.save
        format.html { redirect_to @emailplan, :notice => 'Emailplan was successfully created.' }
        format.json { render :json => @emailplan, :status => :created, :location => @emailplan }
      else
        format.html { render :action => "new" }
        format.json { render :json => @emailplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emailplans/1
  # PUT /emailplans/1.json
  def update
    @emailplan = Emailplan.find(params[:id])

    respond_to do |format|
      if @emailplan.update_attributes(params[:emailplan])
        format.html { redirect_to @emailplan, :notice => 'Emailplan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @emailplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emailplans/1
  # DELETE /emailplans/1.json
  def destroy
    @emailplan = Emailplan.find(params[:id])
    @emailplan.destroy

    respond_to do |format|
      format.html { redirect_to emailplans_url }
      format.json { head :ok }
    end
  end
end
