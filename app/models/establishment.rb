class Establishment < ApplicationRecord
    after_validation :set_title, on: [ :create, :update ]

    def set_title
        fail
        title = "Station thermale de #{self.name}"
        self.title = title
        self.save
    end
end
