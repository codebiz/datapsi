class EcommerceplansController < ApplicationController
  # GET /ecommerceplans
  # GET /ecommerceplans.json
  def index
    @ecommerceplans = Ecommerceplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ecommerceplans }
    end
  end

  # GET /ecommerceplans/1
  # GET /ecommerceplans/1.json
  def show
    @ecommerceplan = Ecommerceplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ecommerceplan }
    end
  end

  # GET /ecommerceplans/new
  # GET /ecommerceplans/new.json
  def new
    @ecommerceplan = Ecommerceplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ecommerceplan }
    end
  end

  # GET /ecommerceplans/1/edit
  def edit
    @ecommerceplan = Ecommerceplan.find(params[:id])
  end

  # POST /ecommerceplans
  # POST /ecommerceplans.json
  def create
    @ecommerceplan = Ecommerceplan.new(params[:ecommerceplan])

    respond_to do |format|
      if @ecommerceplan.save
        format.html { redirect_to @ecommerceplan, :notice => 'Ecommerceplan was successfully created.' }
        format.json { render :json => @ecommerceplan, :status => :created, :location => @ecommerceplan }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ecommerceplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ecommerceplans/1
  # PUT /ecommerceplans/1.json
  def update
    @ecommerceplan = Ecommerceplan.find(params[:id])

    respond_to do |format|
      if @ecommerceplan.update_attributes(params[:ecommerceplan])
        format.html { redirect_to @ecommerceplan, :notice => 'Ecommerceplan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ecommerceplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ecommerceplans/1
  # DELETE /ecommerceplans/1.json
  def destroy
    @ecommerceplan = Ecommerceplan.find(params[:id])
    @ecommerceplan.destroy

    respond_to do |format|
      format.html { redirect_to ecommerceplans_url }
      format.json { head :ok }
    end
  end
end
