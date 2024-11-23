class Presentation < ApplicationRecord
    validates_presence_of :name
    validates_uniqueness_of :name

    has_many :feedbacks
    belongs_to :team
    #Allow editing feedback
    accepts_nested_attributes_for :feedbacks,allow_destroy: true, reject_if: :all_blank
end
