class WinesController < ApplicationController
  def index
    @search = params[:term].present? ? params[:term] : nil
       if @search
        @wines = Wine.search(@search)
       else
         @wines = Wine.all
       end
  end

  def show
    @wine = Wine.find(params[:id])
  end

end
