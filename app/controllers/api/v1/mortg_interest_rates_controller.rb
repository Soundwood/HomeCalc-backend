class Api::V1::MortgInterestRatesController < ApplicationController
    def index
        @mortg_interest_rates = MortgInterestRate.all
        render json: @mortg_interest_rates
    end
end
