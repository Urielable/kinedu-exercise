class Api::V1::ActivitiesController < ApiController

    def index
        @activities = Activity.all
    end

end