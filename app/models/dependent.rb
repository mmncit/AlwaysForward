class Dependent < ApplicationRecord
    belongs_to :patient

    DEPENDENCY_TYPES = ['Spouse', 'Child']
    validates_inclusion_of :dependency_type, :in => DEPENDENCY_TYPES,
    :message => "must be one of: #{DEPENDENCY_TYPES.join(', ')}"


end
