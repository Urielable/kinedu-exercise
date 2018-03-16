class Baby < ApplicationRecord

    has_many :activity_logs

    #property
    def months
        today = Date.today
        (today.month - birthday.month) + 12 * (today.year - birthday.year) if birthday
    end
end
