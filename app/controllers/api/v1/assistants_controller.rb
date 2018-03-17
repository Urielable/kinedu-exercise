class Api::V1::AssistantsController < ApiController

    def index
        @assistants = Assistant.all
        render status: :ok
    end

end