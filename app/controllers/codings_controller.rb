class CodingsController < ApplicationController
  # GET /codings
  # GET /codings.json
  def index
    @codings = Coding.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @codings }
    end
  end

  # GET /codings/1
  # GET /codings/1.json
  def show
    @coding = Coding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coding }
    end
  end

  # GET /codings/new
  # GET /codings/new.json
  def new
    @coding = Coding.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coding }
    end
  end

  # GET /codings/1/edit
  def edit
    @coding = Coding.find(params[:id])
  end

  # POST /codings
  # POST /codings.json
  def create
    @coding = Coding.new(params[:coding])

    respond_to do |format|
      if @coding.save
        format.html { redirect_to @coding, notice: 'Coding was successfully created.' }
        format.json { render json: @coding, status: :created, location: @coding }
      else
        format.html { render action: "new" }
        format.json { render json: @coding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /codings/1
  # PUT /codings/1.json
  def update
    @coding = Coding.find(params[:id])

    respond_to do |format|
      if @coding.update_attributes(params[:coding])
        format.html { redirect_to @coding, notice: 'Coding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codings/1
  # DELETE /codings/1.json
  def destroy
    @coding = Coding.find(params[:id])
    @coding.destroy

    respond_to do |format|
      format.html { redirect_to codings_url }
      format.json { head :no_content }
    end
  end
end
