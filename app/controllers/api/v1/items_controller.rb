module Api
  module V1
    class ItemsController < ApplicationController

      def index
        respond_with Item.all
      end

      def create
        @item = Item.new(item_params)
        if @item.save
          respond_with @item
        end
      end

      def show
      respond_with(Item.find(params[:id]))
      end

      def update
        @item = Item.find(params[:id])
        if @item.update(note_params)
          respond_with @item
        end
      end

      def destroy
        respond_with Item.destroy(params[:id])
      end

      private

      def note_params
        require(:note).permit(:name, :make, :model)
      end
    end
  end
end
