class ListsController < ApplicationController
    before_action :not_logged_in

    def new
        @list = List.new
    end

    def create
        binding.pry
    end

    private

    def list_params
        params.require(:list).permit(:title)
    end
end
