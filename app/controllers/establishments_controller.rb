class EstablishmentsController < ApplicationController
  def index
  end

  def show
    @etablissement = Establishment.find(params[:id])
  end

  def new
    @etablissement = Establishment.new
  end

  def create
    @etablissement = Establishment.new(etablissement_params)
    @etablissement.save
  end

  def edit
    @etablissement = Establishment.find(params[:id])
  end

  def update
    @etablissement = Establishment.find(params[:id])
    @etablissement.update(etablissement_params)
  end

  def destroy
  end

  def etablissement_params
    params.require(:establishment).permit(:name, :body)
  end
end
