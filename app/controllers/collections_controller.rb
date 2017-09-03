class CollectionsController < ApplicationController
  def index
    @portfolio_items = Collection.all
  end
end
