class Api::V1::BabiesController < ApiController

    def index
        @babies = Baby.all
    end
end