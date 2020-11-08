class Api::V1::PropTaxRatesController < ApplicationController
    def index
        @prop_tax_rates = PropTaxRate.all
        render json: @prop_tax_rates
    end
end
