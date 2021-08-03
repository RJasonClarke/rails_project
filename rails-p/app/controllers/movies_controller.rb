class MoviesController < ApplicationController

    def new
        @movie = Movie.new
    end

    def create
        @movie = current_user.movies.build(movie_params)
        if @movie.save
            redirect_to lists_path
        else
            render :new
        end
    end

    def index
        if params[:list_id] && @list = List.find_by_id(params[:list_id])
            @movies = @list.movies
        else
            @movies = Movie.all
        end
    end

    def show
        
    end

    def edit
        
    end

    def update
        
    end

    private

    def movie_params
        params.require(:movie).permit(:title,:list_id)
    end

end
