class ItemsController < ApplicationController

    def index
        @items = Item.all
    end

    def new
        @items = Item.new
    end

    def create
        @items = Item.new(params.include(:label, :description, :item_type, :price))
        
        if @items.save
            redirect_to show_items_path(@item)
        else
            #respond with 500 error
        end
    end

end 