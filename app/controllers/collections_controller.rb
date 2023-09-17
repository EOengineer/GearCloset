class CollectionsController < ApplicationController
  def index
    @collections = Collection.where(user_id: current_user.id)
  end

  def show
    @collection = current_user.collections.find(params[:id])
  end
end