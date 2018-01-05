class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
     @item = Item.find(params[:id])
     @review = Review.new
  end

  def new
     @item = Item.new
  end

  def create
      item = Item.new(item_params)
      item.save
      edirect_to items_path
  end
  def destroy
      item = Item.find(params[:id])
      item.destroy
      redirect_to items_path
  end

 private
      def item_params
        params.require(:item).permit(:item_name,:item_id)
      end

end
