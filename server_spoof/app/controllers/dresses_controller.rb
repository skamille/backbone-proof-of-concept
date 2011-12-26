class DressesController < ApplicationController

	after_filter :set_access_control_headers

	def set_access_control_headers
	headers['Access-Control-Allow-Origin'] = 'http://localhost/'
	headers['Access-Control-Request-Method'] = '*'
	end

  # GET /dresses
  # GET /dresses.json
  def index
    @dresses = Dress.all

    render json: @dresses 
  end

  # GET /dresses/1
  # GET /dresses/1.json
  def show
    @dress = Dress.find(params[:id])

    render json: @dress 
  end

  # GET /dresses/new
  # GET /dresses/new.json
  def new
    @dress = Dress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dress }
    end
  end

  # GET /dresses/1/edit
  def edit
    @dress = Dress.find(params[:id])
  end

  # POST /dresses
  # POST /dresses.json
  def create
    @dress = Dress.new(params[:dress])

    respond_to do |format|
      if @dress.save
        format.html { redirect_to @dress, notice: 'Dress was successfully created.' }
        format.json { render json: @dress, status: :created, location: @dress }
      else
        format.html { render action: "new" }
        format.json { render json: @dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dresses/1
  # PUT /dresses/1.json
  def update
    @dress = Dress.find(params[:id])

    respond_to do |format|
      if @dress.update_attributes(params[:dress])
        format.html { redirect_to @dress, notice: 'Dress was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dresses/1
  # DELETE /dresses/1.json
  def destroy
    @dress = Dress.find(params[:id])
    @dress.destroy

    respond_to do |format|
      format.html { redirect_to dresses_url }
      format.json { head :ok }
    end
  end
end
