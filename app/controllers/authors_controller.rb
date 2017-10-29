class AuthorsController < ApplicationController

    def create
        @author = Author.new(author_params)
        if @author.save
            redirect_to @author
        else
            render :new
        end
    end

    def index
        @authors = Author.all()
    end

    def new
    end

    def show
        @author = Author.find(params[:id])
    end

    private
    def author_params
        params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
