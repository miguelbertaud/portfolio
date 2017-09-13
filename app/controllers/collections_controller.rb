class CollectionsController < ApplicationController
  def index
    @portfolio_items = Collection.all
  end

  def angular
    @angular_portfolio_items = Collection.angular
  end

  def show
    @portfolio_item = Collection.find(params[:id])
  end

  def new
    @portfolio_item = Collection.new
    3.times{ @portfolio_item.technologies.build }
  end

  def edit
    @portfolio_item = Collection.find(params[:id])
  end

  def create
    @portfolio_item = Collection.new(params.require(:collection).permit(:title, :subtitle, :body,
    technologies_attributes: [:name]))

    respond_to do |format|
      if @@portfolio_item.save
        format.html { redirect_to collections_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @portfolio_item = Collection.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:collection).permit(:title, :subtitle, :body))
        format.html { redirect_to collections_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_item = Collection.find(params[:id])

    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to collections_url, notice: 'Record was removed' }
    end
  end


end
