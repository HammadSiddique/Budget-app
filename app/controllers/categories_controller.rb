class CategoriesController < ApplicationController
    def index
        @categories = Category.all.where(user_id: current_user.id).order(:name)
    end

    def show
        @category = Category.find(params[:id])
    end

    def new
        @group = Group.new
    end

    def create
        @user = current_user
        @category = Category.new(category_params)
        if @category.save
          redirect_to @category
        else
          render :new
        end
    end
    
    private 

    def category_params
        params.require(:category).permit(:name, :icon)
    end
    
end
