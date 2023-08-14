class Person < ApplicationRecord
    validate:check_goodness

    private

    def check_goodness
        if first_name=="Evil"
            error.add :base, "this personis evil"
        end    
    end
end
