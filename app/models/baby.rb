class Baby < ApplicationRecord

    #property
    def months
        today = Date.today
        (today.month - birthday.month) + 12 * (today.year - birthday.year) if birthday
    end
end
