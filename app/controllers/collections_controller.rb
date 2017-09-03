class CollectionsController < ApplicationController
  def index
    @portfolio_items = Collection.all
  end

  def new
    @portfolio_item = Collection.new
  end

  def create
    @portfolio_item = Collection.new(params.require(:collection).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @@portfolio_item.save
        format.html { redirect_to collections_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end


end
