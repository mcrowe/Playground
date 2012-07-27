class CreativesController < ApplicationController

  def index
    @creatives = Creative.all
  end

  def show
    @creative = Creative.find(params[:id])
  end

  def new
    @creative = Creative.new
  end

  def edit
    @creative = Creative.find(params[:id])
  end

  def create
    @creative = Creative.new(params[:creative])

    if @creative.save
      redirect_to @creative, notice: 'Creative was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @creative = Creative.find(params[:id])

    if @creative.update_attributes(params[:creative])
      redirect_to @creative, notice: 'Creative was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @creative = Creative.find(params[:id])
    @creative.destroy

    redirect_to creatives_url, notice: 'Creative was successfully deleted.'
  end
end
