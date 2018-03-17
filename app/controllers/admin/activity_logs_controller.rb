class Admin::ActivityLogsController < ApplicationController
    
    def index
        @activity_logs = ActivityLog.order(start_time: :desc)
        filtering_params(params).each do |key, value|
            @activity_logs = @activity_logs.public_send(key, value) if value.present?
        end
        @babies = Baby.all.order(:name)
        @assistants = Assistant.all.order(:name)
        
    end

    private

    def filtering_params(params)
        params.slice(:assistant, :baby,:status)
    end

end