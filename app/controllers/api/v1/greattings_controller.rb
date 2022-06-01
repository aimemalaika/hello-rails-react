class Api::V1::GreattingsController < ApplicationController
    def index
        render json: Greating.order(Arel.sql('RANDOM()')).first
    end
end
