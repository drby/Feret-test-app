class WinesController < ApplicationController
  def index
    # @wines = Wine.all

    search = params[:term].present? ? params[:term] : nil
    @wines =
      if search
        Wine.search(search)
      end
  end

  def show
    @wine = Wine.find(params[:id])
  end
end
