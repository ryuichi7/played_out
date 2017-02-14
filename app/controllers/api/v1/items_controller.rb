module Api
  module V1
    class ItemsController < ApplicationController

      def index
        respond_with Item.all
      end

      def create
        @item = current_user.items.build(item_params)

        if @item.save
          respond_with :api, :v1, @item
        end
      end

      def show
        respond_with(Item.find(params[:id]))
      end

      def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
          respond_with :api, :v1, @item
        end
      end

      def destroy
        respond_with Item.destroy(params[:id])
      end

      def test
        @item = Item.first
        @types = Type.all
        render layout: false

      end

      private

      def item_params
        params.require(:item).permit(:make, :model, :year, :description, :type_id)
      end
    end
  end
end
