class Patient < ApplicationRecord
    has_many :dependents

    scope :sorted, lambda { order("name ASC") }
    scope :name_like, -> (name) { where("name ilike ?", name)}
end
