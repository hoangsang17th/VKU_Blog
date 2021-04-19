class OverController < ApplicationController
    def index
        
        if params[:search]
            @posts = Post.where('title LIKE ?', "%#{params[:search]}%")
        else
            @@per_page = 2
            @page = params.fetch(:page,0).to_i
            @posts = Post.offset(@page * @@per_page).limit(@@per_page)
        end
    end
    def users
        @users = User.all
    end

    # def search
    #     params.require(:).permit(:search)
    # end
end
