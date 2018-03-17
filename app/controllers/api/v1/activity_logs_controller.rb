class Api::V1::ActivityLogsController < ApiController

    before_filter :set_baby, only:[:create,:index]
    before_filter :set_activity_log, only:[:update,:destroy]

    
    def index
        @logs = ActivityLog.where(baby: @baby)
        render status: :ok
    end

    def create
        log = @baby.activity_logs.new(activity_logs_params)

        if log.save
            render json: log, status: :created
        else
            render :json => { :errors => log.errors.full_messages }, status: :bad_request
        end
    end

    def update
        if @activity_log.update(activity_logs_params)
            render json: @activity_log, status: :ok
        else
            render :json => { :errors => @activity_log.errors.full_messages }, status: :bad_request
        end
    end

    def destroy
        if @activity_log.destroy
            render json: {msg: 'record deleted'}, status: :ok
        else
            render :json => { :errors => @activity_log.errors.full_messages }, status: :bad_request
        end
    end

    private

    def set_baby
        @baby = Baby.find(params[:baby_id])
    end

    def set_activity_log
        @activity_log = ActivityLog.find(params[:id])
    end

    def activity_logs_params
        params.require(:activity_log).permit(:assistant_id,:activity_id,:start_time,:stop_time)
    end

end