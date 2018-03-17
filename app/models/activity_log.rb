class ActivityLog < ApplicationRecord

    IN_PROGRESS = "En progreso"
    FINISHED = "Terminada"
    NOT_FINISHED = "*"
    MINUTES = 60
    STATUS = [IN_PROGRESS,FINISHED]

    scope :status, -> (status) { select{ |log| log.status == status} }
    scope :baby, -> (baby_id) { where baby_id: baby_id }
    scope :assistant, -> (assistant_id) { where assistant_id: assistant_id}

    belongs_to :baby
    belongs_to :assistant
    belongs_to :activity
    
    validate :validate_stop_time, on: :update

    def status
        stop_time.present? ? FINISHED : IN_PROGRESS
    end

    def diff_in_minutes
        if stop_time.present?
            return "#{((self.stop_time - self.start_time) / MINUTES).to_i} min"
        end
        NOT_FINISHED
    end

    private

    def validate_stop_time
        if self.stop_time.present?
            if self.stop_time <= self.start_time
                errors.add(:activity_log,"stop_time cannot be earlier than the start_time")
            end
        end
    end
end
