class Feedback < ApplicationRecord
    belongs_to :presentation
    belongs_to :user
    validates_presence_of :overall_rating
    #Validate the score range
    validates :po1, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true}
    validates :po2, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :po3, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :po4, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :po5, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :po6, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :po7, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pc1, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pc2, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pc3, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pc4, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pv1, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pv2, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pv3, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pv4, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pv5, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pd1, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pd2, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :pd3, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5, allow_nil: true }
    validates :overall_rating, numericality: {greater_than_or_equal_to: 1,less_than_or_equal_to: 5,allow_nil: true }
    # validates :user_id, uniqueness: { scope: :presentation_id }
end
