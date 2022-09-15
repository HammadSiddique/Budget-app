class BudgetsController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource

    def index
        @budgets = Budget.all.includes([:user]).where(user_id: current_user.id).order(:name)
    end

    def show
        @budget = Budget.find(params[:id])
    end

    def new
        @budget = Budget.new
    end

    def create
        @user = current_user
        @budget = user.budgets.new(budget_params)
        if @budget.save
            @category_budget = @budget.category_budgets.create(category_id: params[:category_id], budget_id: @budget.id)
            redirect_to categories_path
        else
            render :new
        end
    end

    private 

    def budget_params
        params.require(:budget).permit(:name, :amount)
    end
end
