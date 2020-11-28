class Api::V1::ScenariosController < ApplicationController
    before_action :set_scenario, only: [:show, :update, :destroy]

    def index
        if logged_in?
            @scenarios = current_user.scenarios
            render json: @scenarios
        else
            render json: {
                error: "You must be logged in"
            }
        end
    end
    def show
        render json: @scenario
    end
    def create
        @scenario = Scenario.new(scenario_params)
        if @scenario.save
            render json: @scenario, status: :created
        else
            render json: @scenario.errors, status: :unprocessable_entity
        end
    end
    def update
        if @scenario.update(scenario_params)
            render json:  @scenario, status: :ok
        else
            render json: @scenario.errors, status: :unprocessable_entity
        end
    end
    def destroy
        if @scenario.destroy
            render json: { data: "Scenario Destroyed" }, status: :ok
        else
            render json: { error: "Scenario not found and not destroyed" }, status: :unprocessable_entity
        end
    end

    private

    def scenario_params
        params.require(:scenario).permit(:net_income, :income_after_tax, :monthly_debt, 
            :credit_score, :downpayment, :state, :city, :prop_tax_rate_id, :mortg_interest_rate_id, :user_id, :stars)
    end

    def set_scenario
        @scenario = Scenario.find_by_id(params['id'])
    end
end
