class WinesController < ApplicationController
  def index
    @wines = Wine.all

    # @search = params[:term].present? ? params[:term] : nil
      if @search
        Wine.search(@search)
      else
        Wine.all
      end
  end

  def show
    @wine = Wine.find(params[:id])
  end


end
