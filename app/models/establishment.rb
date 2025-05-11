class Establishment < ApplicationRecord
    after_validation :set_title, on: [ :create, :update ]

    def set_title
        title = "Station thermale de #{self.name}"
        self.title = title
    end
end
