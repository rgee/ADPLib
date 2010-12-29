class DedicationsController < ApplicationController
  # GET /dedications
  # GET /dedications.xml
  def index
    @dedications = Dedication.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dedications }
    end
  end

  # GET /dedications/1
  # GET /dedications/1.xml
  def show
    @dedication = Dedication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dedication }
    end
  end

  # GET /dedications/new
  # GET /dedications/new.xml
  def new
    @dedication = Dedication.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dedication }
    end
  end

  # GET /dedications/1/edit
  def edit
    @dedication = Dedication.find(params[:id])
  end

  # POST /dedications
  # POST /dedications.xml
  def create
    @dedication = Dedication.new(params[:dedication])

    respond_to do |format|
      if @dedication.save
        format.html { redirect_to(@dedication, :notice => 'Dedication was successfully created.') }
        format.xml  { render :xml => @dedication, :status => :created, :location => @dedication }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dedication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dedications/1
  # PUT /dedications/1.xml
  def update
    @dedication = Dedication.find(params[:id])

    respond_to do |format|
      if @dedication.update_attributes(params[:dedication])
        format.html { redirect_to(@dedication, :notice => 'Dedication was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dedication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dedications/1
  # DELETE /dedications/1.xml
  def destroy
    @dedication = Dedication.find(params[:id])
    @dedication.destroy

    respond_to do |format|
      format.html { redirect_to(dedications_url) }
      format.xml  { head :ok }
    end
  end
end
