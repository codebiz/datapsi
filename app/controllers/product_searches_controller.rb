class ProductSearchesController < ApplicationController
  # GET /product_searches
  # GET /product_searches.json
  def index
    @product_searches = ProductSearch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @product_searches }
    end
  end

  # GET /product_searches/1
  # GET /product_searches/1.json
  def show
    @product_search = ProductSearch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @product_search }
    end
  end

  # GET /product_searches/new
  # GET /product_searches/new.json
  def new
    @product_search = ProductSearch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @product_search }
    end
  end

  # GET /product_searches/1/edit
  def edit
    @product_search = ProductSearch.find(params[:id])
  end

  # POST /product_searches
  # POST /product_searches.json
  def create
    @product_search = ProductSearch.new(params[:product_search])

    respond_to do |format|
      if @product_search.save
        format.html { redirect_to @product_search, :notice => 'Product search was successfully created.' }
        format.json { render :json => @product_search, :status => :created, :location => @product_search }
      else
        format.html { render :action => "new" }
        format.json { render :json => @product_search.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_searches/1
  # PUT /product_searches/1.json
  def update
    @product_search = ProductSearch.find(params[:id])

    respond_to do |format|
      if @product_search.update_attributes(params[:product_search])
        format.html { redirect_to @product_search, :notice => 'Product search was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @product_search.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_searches/1
  # DELETE /product_searches/1.json
  def destroy
    @product_search = ProductSearch.find(params[:id])
    @product_search.destroy

    respond_to do |format|
      format.html { redirect_to product_searches_url }
      format.json { head :ok }
    end
  end
end
