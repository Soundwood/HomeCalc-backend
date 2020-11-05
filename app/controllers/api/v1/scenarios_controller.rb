class Api::V1::ScenariosController < ApplicationController
    before_action :set_scenario, only: [:show, :update, :destroy]

    def index
        @scenarios = Scenario.all
        render json: @scenarios
    end
    def show
        render json: @scenario
    end
    def create
        @scenario = Scenario.new(scenario_params)
        if @scenario.save
            render json: @scenario, status: :created, location: @scenario
        else
            render json: @scenario.errors, status: :unprocessable_entity
        end
        # @scenario = Scenario.create!(scenario_params)
        # render json: @scenario
    end
    def update
        @scenario.update(scenario_params)
        head :no_content
    end
    def destroy
        @scenario.destroy
        head :no_content
    end

    private

    def scenario_params
        params.require(:scenario).permit(:net_income, :income_after_tax, :monthly_debt, 
            :credit_score, :downpayment, :state, :city, :prop_tax_rate_id, :mortg_interest_rate_id)
    end

    def set_scenario
        @scenario = Scenario.find_by_id(params['id'])
    end
end
