class ListsController < ApplicationController
    before_action :not_logged_in

    def new
        @list = List.new
    end

    def create
        @list = current_user.lists.build(list_params)
        if @list.save
            redirect_to lists_path
        else
            render :new
        end
    end

    def index
        @lists = current_user.lists.all
    end

    def show
        @list = List.find(params[:id])
    end

    private

    def list_params
        params.require(:list).permit(:title)
    end
end
