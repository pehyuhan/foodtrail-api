# app/controllers/items_controller.rb
class ItemsController < ApplicationController
  before_action :set_list
  before_action :set_list_item, only: [:show, :update, :destroy]

  # GET /lists/:list_id/items
  def index
    json_response(@list.items)
  end

  # GET /lists/:list_id/items/:id
  def show
    json_response(@item)
  end

  # POST /lists/:list_id/items
  def create
    @list.items.create!(item_params)
    json_response(@list, :created)
  end

  # PUT /lists/:list_id/items/:id
  def update
    @item.update(item_params)
    head :no_content
  end

  # DELETE /lists/:list_id/items/:id
  def destroy
    @item.destroy
    head :no_content
  end

  private

  def item_params
    params.permit(:name, :done)
  end

  def set_list
    @list = list.find(params[:list_id])
  end

  def set_list_item
    @item = @list.items.find_by!(id: params[:id]) if @list
  end
end
