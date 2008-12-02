class ClipsController < ApplicationController
  # GET /clips
  # GET /clips.xml
  def index
    @clips = Clip.find_latest

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clips }
    end
  end

  # GET /clips/1
  # GET /clips/1.xml
  def show
    @clip = Clip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clip }
    end
  end

  # GET /clips/new
  # GET /clips/new.xml


  # GET /clips/1/edit
  def edit
    @clip = Clip.find(params[:id])
  end

  def create
    
    @clip = Clip.new
    @clip.sourceTitle = params[:t]
    @clip.selection = params[:s]
    if params[:u] == 'none'
      @clip.sourceUri = nil
    else
      @clip.sourceUri = params[:u]
    end
    
    respond_to do |format|
      if @clip.save
        flash[:notice] = 'Clip was successfully created.'
        format.html { redirect_to(clips_path) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # DELETE /clips/1
  # DELETE /clips/1.xml
  def destroy
    @clip = Clip.find(params[:id])
    @clip.destroy

    respond_to do |format|
      format.html { redirect_to(clips_url) }
      format.xml  { head :ok }
    end
  end
end
