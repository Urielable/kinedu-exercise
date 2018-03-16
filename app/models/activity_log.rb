class ActivityLog < ApplicationRecord

    belongs_to :baby
    belongs_to :assistant
    belongs_to :activity
    
    validate :validate_stop_time, on: :update

    private

    def validate_stop_time
        if self.stop_time.present?
            if self.stop_time <= self.start_time
                errors.add(:activity_log,"stop_time cannot be earlier than the start_time")
            end
        end
    end
end
